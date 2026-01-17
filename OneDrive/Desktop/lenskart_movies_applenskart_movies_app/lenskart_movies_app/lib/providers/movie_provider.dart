import 'package:flutter/material.dart';
import '../models/movie.dart';

class MovieProvider with ChangeNotifier {
  final List<Movie> _favourites = [];
  final List<Movie> _watchlist = [];

  List<Movie> get favourites => _favourites;
  List<Movie> get watchlist => _watchlist;

  void toggleFavourite(Movie movie) {
    if (_favourites.contains(movie)) {
      _favourites.remove(movie);
    } else {
      _favourites.add(movie);
    }
    notifyListeners();
  }

  void toggleWatchlist(Movie movie) {
    if (_watchlist.contains(movie)) {
      _watchlist.remove(movie);
    } else {
      _watchlist.add(movie);
    }
    notifyListeners();
  }

  bool isFavourite(Movie movie) => _favourites.contains(movie);
  bool isInWatchlist(Movie movie) => _watchlist.contains(movie);
}
