import 'package:e_book/Features/home/data/repository/home_repo_imple.dart';
import 'package:e_book/Features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:e_book/Features/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:e_book/core/utils/app_router.dart';
import 'package:e_book/core/utils/constants.dart';
import 'package:e_book/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServerLocator();
  runApp(const Ebook());
}

class Ebook extends StatelessWidget {
  const Ebook({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FeaturedBooksCubit(getIt.get<HomeRepoImplementation>())
                  ..fetchFeaturedBooks()),
        BlocProvider(
            create: (context) =>
                NewestBooksCubit(getIt.get<HomeRepoImplementation>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
