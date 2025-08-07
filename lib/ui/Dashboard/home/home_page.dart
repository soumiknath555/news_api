import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/ui_helper/ui_helper.dart';

import 'everything_bloc/news_bloc.dart';
import 'everything_bloc/news_event.dart';
import 'everything_bloc/news_state.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BlocProvider.of<NewsBloc>(context).add(getNewsEvent());
    context.read<NewsBloc>().add(getNewsEvent());
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( automaticallyImplyLeading: false,),

      body:Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0,right: 20.0),
          child: Column(
            children: [

              TextField(
                decoration: mInputDecoration(
                  pexfixIcon: Icons.search,
                 // hintText: "Let's see what happend today",
                  lableText: "Let's see what happend today",
                ),
              ) ,
              SizedBox(height: 20,),
              Row(
                children: [
                  Text("Breaking News !",style: mTextStyle20(fontWeight: FontWeight.bold),),
                  Spacer(),
                  Text("See All",style: mTextStyle18(fontWeight: FontWeight.bold,color: Colors.blueAccent),)
                ],
              ),
              SizedBox(height: 20,),
               SizedBox(
                  width: double.infinity,
                  height: 270,
                  child: BlocBuilder<NewsBloc , NewsState >(builder: (context , state){
                    if(state is NewsLoadingState){
                      return Center(child: CircularProgressIndicator(),);
                    }
                    if(state is NewsErrorState){
                      return Center(child: Text('${state.errorMsg}'),);
                    }
                    if(state is NewsLoadedState) {
                      var mDataModel = state.resNewsEvery;
                      return ListView.builder(
                        scrollDirection: Axis.horizontal,
                          itemCount: mDataModel.articles?.length ?? 0,
                          itemBuilder: (_ , index){
                            var eachEvery = mDataModel.articles?[index];
                            return  Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Container(
                                  width: 380,
                                  // height: 250,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                    image: DecorationImage(image: NetworkImage(eachEvery?.urlToImage ?? ""),fit: BoxFit.cover)
                                  ),

                                ),
                            );

                          });
                    }


                    return Container();
                  }),

                ),


              SizedBox(height: 20,),
              Row(children: [
                Text("Trending Right Now",style: mTextStyle20(fontWeight: FontWeight.bold),),
                Spacer(),
                Text("See All",style: mTextStyle18(fontWeight: FontWeight.bold,color: Colors.blueAccent),)

              ],)
            ],
          ),
        ),
      ) ,
    );
  }
}