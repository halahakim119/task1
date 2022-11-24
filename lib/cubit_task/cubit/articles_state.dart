
part of 'articles_cubit.dart';

@freezed
abstract class ArticlesState with _$ArticlesState {
  const factory ArticlesState.loading()=_Loading;
  const factory ArticlesState.loaded(DataModel articles)=_Loaded;
  const factory ArticlesState.error(String error)=_Error;

}
