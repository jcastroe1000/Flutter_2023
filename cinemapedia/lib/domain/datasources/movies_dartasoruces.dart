import 'package:cinemapedia/domain/entities/movie.dart';

abstract class MoviesDartasoruces {
  Future<List<Movie>> getNowPlaying({int page = 1});
}
