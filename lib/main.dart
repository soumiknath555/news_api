import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api/api_helper/api_helper.dart';
import 'package:news_api/routes/app_routes.dart';
import 'package:news_api/ui/Dashboard/home/everything_bloc/news_bloc.dart';

import 'package:news_api/ui/login_page.dart';
import 'package:news_api/ui_helper/ui_helper.dart';
import 'package:bloc/bloc.dart';



void main (){
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (cotext) => NewsBloc(apiHelper:ApiHelper() ))
  ], child: MyApp()));

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      initialRoute: AppRoutes.SPLASH_PAGE,
      routes: AppRoutes.routes,
      home: LoginPage(),
    );
  }
}