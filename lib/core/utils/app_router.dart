import 'package:e_book/Features/home/data/models/book_model/book_model.dart';
import 'package:e_book/Features/home/data/repository/home_repo.dart';
import 'package:e_book/Features/home/presentation/manger/relevance%20books%20cubit/relevance_books_cubit.dart';
import 'package:e_book/Features/home/presentation/views/book_details_view.dart';
import 'package:e_book/Features/home/presentation/views/home_view.dart';
import 'package:e_book/Features/search/presentation/views/search_view.dart';
import 'package:e_book/Features/splash/presentation/views/splash_view.dart';
import 'package:e_book/core/utils/service_locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/', // '/' this is mean first route.
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          // instead of put this cubit on main page, we put it in the page itself.
          create: (context) => RelevanceBooksCubit(getIt<HomeRepo>()),
          child: BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
