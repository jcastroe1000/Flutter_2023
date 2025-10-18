import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'movies_providers.dart';

final initialLoadingProvider = Provider<bool>((ref) {
  final nowPlayingMovies = ref.watch(nowPlayingsMoviesProvider).isEmpty;
  final popularMovies = ref.watch(popularMoviesProvider).isEmpty;
  final upComming = ref.watch(upCommingMoviesProvider).isEmpty;
  final topRated = ref.watch(topRatedMoviesProvider).isEmpty;

  if (nowPlayingMovies || popularMovies || upComming || topRated) return true;

  return false;
});
