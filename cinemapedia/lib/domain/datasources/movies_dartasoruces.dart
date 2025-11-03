import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDartasoruces {
  Future<List<Movie>> getNowPlaying({int page = 1});
  Future<List<Movie>> getPopular({int page = 1});
  Future<List<Movie>> getUpComming({int page = 1});
  Future<List<Movie>> getTopRated({int page = 1});
  Future<Movie> getMovieDetail(String id);
  Future<List<Movie>> searchMovie(String query);
}
