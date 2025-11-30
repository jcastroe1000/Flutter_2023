import 'package:cinemapedia/infra/datasources/drift_datasource.dart';
import 'package:cinemapedia/infra/repositories/local_storage_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final localStorageRepositoryProvider = Provider((ref) {
  return LocalStorageRepositoryImpl(DriftDatasource());
});
