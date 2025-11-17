import 'package:cinemapedia/config/constants/environment.dart';
import 'package:cinemapedia/domain/datasources/actors_dataSource.dart';
import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/infra/mappers/actor_mapper.dart';
import 'package:cinemapedia/infra/models/moviedb/credits_response.dart';
import 'package:dio/dio.dart';

class ActorDatasource extends ActorsDatasource {
  final dio = Dio(
    BaseOptions(
      baseUrl: 'https://api.themoviedb.org/3',
      queryParameters: {'api_key': Environmet.movieDdKey, 'language': 'es-MX'},
    ),
  );

  @override
  Future<List<Actor>> getActorByMovie(String movieId) async {
    final response = await dio.get('/movie/$movieId/credits');
    final castResponse = CredistResponse.fromJson(response.data);
    final List<Actor> actors = castResponse.cast
        .map((cast) => ActorMapper.castToEntity(cast))
        .toList();
    return actors;
  }
}
