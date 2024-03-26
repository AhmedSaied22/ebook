import 'package:e_book/Features/home/presentation/manger/featured%20books%20cubit/featured_books_cubit.dart';
import 'package:e_book/Features/home/presentation/manger/newest%20books%20cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> refreshData(BuildContext context) async {
  await Future.wait([
    BlocProvider.of<FeaturedBooksCubit>(context).fetchFeaturedBooks(),
    BlocProvider.of<NewestBooksCubit>(context).fetchNewestBooks(),
  ]);
}
