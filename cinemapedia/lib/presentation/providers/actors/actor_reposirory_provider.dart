import 'package:cinemapedia/infra/datasources/actor_dataSource.dart';
import 'package:cinemapedia/infra/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final actorsRepositoryProvider = Provider((ref) {
  return ActorRepositoryImpl(ActorDatasource());
});
