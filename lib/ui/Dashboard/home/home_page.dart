import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api/ui_helper/ui_helper.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                  hintText: "Let's see what happend today"
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
              Card(
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  

                ),
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