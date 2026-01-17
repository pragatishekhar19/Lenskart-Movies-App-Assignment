import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/movie_provider.dart';
import '../widgets/movie_card.dart';
import 'movie_detail_screen.dart';

class WatchlistScreen extends StatelessWidget {
  const WatchlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MovieProvider>(context);
    final watchlist = provider.watchlist;

    if (watchlist.isEmpty) {
      return const Center(child: Text('Your watchlist is empty'));
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.6,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: watchlist.length,
      itemBuilder: (context, index) {
        final movie = watchlist[index];
        return MovieCard(
          movie: movie,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => MovieDetailScreen(movie: movie),
              ),
            );
          },
        );
      },
    );
  }
}
