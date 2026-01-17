import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/movie.dart';

class TMDBApi {
  static const String apiKey = 'YOUR_TMDB_API_KEY';
  static const String baseUrl = 'https://api.themoviedb.org/3';

  Future<List<Movie>> fetchMovies(String query) async {
    final url = query.isEmpty
        ? '$baseUrl/movie/popular?api_key=$apiKey'
        : '$baseUrl/search/movie?api_key=$apiKey&query=$query';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final List results = data['results'];
      return results.map((json) => Movie.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load movies');
    }
  }
}
