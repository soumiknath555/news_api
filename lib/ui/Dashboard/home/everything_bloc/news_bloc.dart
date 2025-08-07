import 'package:bloc/bloc.dart';
import 'package:news_api/api_helper/api_helper.dart';
import 'package:news_api/models/news_everythings.dart';
import 'package:news_api/ui/Dashboard/home/everything_bloc/url.dart';

import 'news_event.dart';
import 'news_state.dart';


class NewsBloc extends Bloc<NewsEvent , NewsState>{
  ApiHelper apiHelper ;

  NewsBloc({ required this.apiHelper}) : super(NewsInitialState()) {
    on<getNewsEvent>((event , emit) async {
      emit(NewsLoadingState());
      var resJson =await apiHelper.getApi(url: Urls.newsEverything);

      if(resJson!= null) {
        var mResData = NewsEverythings.fromJson(resJson);
        print("✅ News parsed: ${mResData.articles?.length} items");
        emit(NewsLoadedState(resNewsEvery: mResData));
      }else {
        emit(NewsErrorState(errorMsg: "errorMsg , I don't know"));
      }

    });


  /*  on<getNewsEvent>(event, emit) async{
      emit(NewsLoadingState());

      var resJson = await apiHelper.getApi(url: Urls.newsEverything);
      if (resJson! = null){
        var mResData = NewsEverythings.fromJson(resJson);
        emit (NewsLoadedState(resNewsEvery: mResData));
      }else{
        emit(NewsErrorState(errorMsg: "errorMsg , I don't know"));
      }
    }*/
  }
}