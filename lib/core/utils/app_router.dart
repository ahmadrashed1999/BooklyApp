import 'package:booklyapp/core/utils/service_locator.dart';
import 'package:booklyapp/featuers/home/data/repos/home_repo.dart';
import 'package:booklyapp/featuers/home/presentation/view/book_deatils_view.dart';
import 'package:booklyapp/featuers/home/presentation/view/home_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../featuers/Splash/presentation/views/splash_view.dart';
import '../../featuers/home/data/model/book_model/book_model.dart';
import '../../featuers/home/presentation/manager/similar_books_cubit/similar_books_cubit.dart';
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
          builder: (context, state) => BlocProvider(
                create: (context) => SimilarBooksCubit(
                  getIt.get<HomeRepo>(),
                ),
                child:  BookDeatilsView(
                  bookModel: state.extra as BookModel,
                ),
              )),
      GoRoute(
          path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
