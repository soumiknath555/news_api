import 'package:news_api/models/news_everythings.dart';

abstract class NewsState {}

class NewsInitialState extends NewsState {}
class NewsLoadingState extends NewsState {}
class NewsLoadedState extends NewsState {
  NewsResponse news ;
  NewsLoadedState({ required this.news});
}
class NewsErrorState extends NewsState {
  String errorMsg ;
  NewsErrorState({ required this.errorMsg});
}