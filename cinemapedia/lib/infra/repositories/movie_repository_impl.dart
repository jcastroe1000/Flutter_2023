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

  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return dataSourse.getPopular(page: page);
  }

  @override
  Future<List<Movie>> getUpComming({int page = 1}) {
    return dataSourse.getUpComming(page: page);
  }

  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    return dataSourse.getTopRated(page: page);
  }
}
