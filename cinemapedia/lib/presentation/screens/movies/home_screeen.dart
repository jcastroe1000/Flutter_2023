import 'package:cinemapedia/presentation/providers/providers.dart';
import 'package:cinemapedia/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreeen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreeen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _HomeView());
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingsMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    //final nowPlayingMovies = ref.watch(nowPlayingsMoviesProvider);
    final slideShowProvider = ref.watch(moviesSlideShowProvider);

    return Column(
      children: [
        CustomAppbar(),
        MoviesSlideshow(movies: slideShowProvider),
      ],
    );
  }
}
