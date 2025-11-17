import 'package:cinemapedia/domain/entities/actor.dart';
import 'package:cinemapedia/domain/repositories/actors_repository.dart';
import 'package:cinemapedia/infra/datasources/actor_dataSource.dart';

class ActorRepositoryImpl extends ActorsRepository {
  final ActorDatasource datasource;

  ActorRepositoryImpl(this.datasource);

  Future<List<Actor>> getActorByMovie(String movieId) {
    return datasource.getActorByMovie(movieId);
  }
}
