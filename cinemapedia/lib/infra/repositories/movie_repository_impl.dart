import 'package:cinemapedia/domain/datasources/movies_dartasoruces.dart';
import 'package:cinemapedia/domain/entities/movie.dart';
import 'package:cinemapedia/domain/repositories/movies_repositorie.dart';

class MovieRepositoryImpl extends MoviesRepositorie {
  final MoviesDartasoruces dataSourse;

  MovieRepositoryImpl(this.dataSourse);

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return this.dataSourse.getNowPlaying(page: page);
  }
}
