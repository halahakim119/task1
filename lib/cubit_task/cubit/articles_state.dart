part of 'articles_cubit.dart';

@immutable
abstract class ArticlesState extends Equatable {}

class ArticlesStateLoadingState extends ArticlesState {
  @override
  List<Object> get props => [];
}

class ArticlesLoadedState extends ArticlesState {
  final DataModel articles;
  ArticlesLoadedState({required this.articles});
  @override
  List<Object> get props => [articles];
}

class ArticlesErrorState extends ArticlesState {
  final String error;
  ArticlesErrorState(this.error);

  @override
  List<Object?> get props => error as List<Object>;
}
