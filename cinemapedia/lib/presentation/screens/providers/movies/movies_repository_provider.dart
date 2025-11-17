import 'package:cinemapedia/infra/datasources/moviedb_datasource.dart';
import 'package:cinemapedia/infra/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final movieRepositoryProvider = Provider((ref) {
  return MovieRepositoryImpl(MoviedbDatasource());
});
