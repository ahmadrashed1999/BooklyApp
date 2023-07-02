import 'package:booklyapp/featuers/home/presentation/view/book_deatils_view.dart';
import 'package:booklyapp/featuers/home/presentation/view/home_view.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/Splash/presentation/views/splash_view.dart';
import '../../featuers/search/presentation/view/search_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDeatilesView = '/bookDeatilsView';
  static const kSearchView = '/searchView';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: kBookDeatilesView,
          builder: (context, state) => const BookDeatilsView()),
      GoRoute(
          path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
