import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import '../models/movie.dart';
import '../widgets/circular_rating.dart';
import '../widgets/movie_card.dart';

class MovieDetailScreen extends StatelessWidget {
  final Movie movie;

  const MovieDetailScreen({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(movie.title)),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(
              'https://image.tmdb.org/t/p/w500${movie.backdropPath}',
              height: 200,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.broken_image, size: 200),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    movie.title,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  CircularRating(rating: movie.voteAverage),
                  const SizedBox(height: 8),
                  Text(
                    'Release Date: ${movie.releaseDate}',
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    movie.overview,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 12),
                  ElevatedButton.icon(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "Movie is Playing",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                      );
                    },
                    icon: const Icon(Icons.play_arrow),
                    label: const Text('Play Now'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
