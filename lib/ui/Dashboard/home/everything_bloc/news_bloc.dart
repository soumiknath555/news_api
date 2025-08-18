import 'package:bloc/bloc.dart';
import 'package:news_api/api_helper/api_helper.dart';
import 'package:news_api/models/news_everythings.dart';
import 'package:news_api/ui/Dashboard/home/everything_bloc/url.dart';

import 'news_event.dart';
import 'news_state.dart';


class NewsBloc extends Bloc<NewsEvent , NewsState>{
  ApiHelper apiHelper ;

  NewsBloc({ required this.apiHelper}) : super(NewsInitialState()) {

    // Headlines

    on<FetchHeadlinesEvent>((event , emit) async {
      emit(NewsLoadingState());
      var resJson =await apiHelper.getApi(url: Urls.newsHeadlines);

      if(resJson!= null) {
        var mResData = NewsResponse.fromJson(resJson);
        // print("✅ News parsed: ${mResData.articles?.length} items");
        emit(NewsLoadedState(news: mResData));
      }else {
        emit(NewsErrorState(errorMsg: "errorMsg , I don't know"));
      }

    });


    // Everything

    on<FetchEverythingEvent>((event , emit) async{

      emit(NewsLoadingState());
      var resJson = await apiHelper.getApi(url: Urls.newsEverything);

      if(resJson!= null) {
        var resData = NewsResponse.fromJson(resJson);
      } else {
        emit(NewsErrorState(errorMsg: "Filled to load Everything !!"));
      }
    });

    // Search
    on<SearchNewsEvent>((event , emit)async{
      emit(NewsLoadingState());
      var resJson =await apiHelper.getApi(url: Urls.newsEverything);

      if(resJson!= null){
        var resData = NewsResponse.fromJson(resJson);
        emit(NewsLoadedState(news: resData));
      }else {
        emit(NewsErrorState(errorMsg: "No result found !! for ${event.query}"));
      }
    });




  }
}