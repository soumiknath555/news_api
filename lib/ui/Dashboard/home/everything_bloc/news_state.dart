import 'package:news_api/models/news_everythings.dart';

abstract class NewsState {}

class NewsInitialState extends NewsState {}
class NewsLoadingState extends NewsState {}
class NewsLoadedState extends NewsState {
  NewsEverythings resNewsEvery ;
  NewsLoadedState({ required this.resNewsEvery});
}
class NewsErrorState extends NewsState {
  String errorMsg ;
  NewsErrorState({ required this.errorMsg});
}