import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/repo.dart';
import '../data/network_service.dart';
import '../cubit/articles_cubit.dart';
import 'screens/show_data.dart';

class AppRouter {
  Repo? repo;

  AppRouter() {
    repo = Repo(networkService: NetworkService());
  }
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (_) => BlocProvider(
                  create: (context) => ArticlesCubit(repo: repo!),
                  child: ShowData(),
                ));

      default:
        return MaterialPageRoute(
          builder: (context) => Container(
            child: Text('error'),
          ),
        );
    }
  }
}
