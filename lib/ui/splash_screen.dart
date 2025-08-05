import 'package:flutter/material.dart';
import 'package:news_api/routes/app_routes.dart';
import 'package:news_api/ui/Dashboard/dashboard_page.dart';
import 'package:news_api/ui_helper/ui_helper.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children:[
            Container(
              width: double.infinity,
              height: double.infinity,
              child: Image(
              image: AssetImage("assets/images/news_splash.png"),
              fit: BoxFit.cover,
                        ),
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox( height: 700,),
                  Text("Don't Miss What Happen in",style: mTextStyle30(color: Colors.white,fontWeight: FontWeight.bold),),
                  SizedBox(height: 1,),
                  Text("Another Part of The World",style: mTextStyle30(color: Colors.white,fontWeight: FontWeight.bold),),
                  
                  SizedBox(height: 20,),

                  SizedBox(
                        width: 300,
                        height: 50,
                        child: ElevatedButton(onPressed: (){
                       Navigator.pushReplacementNamed(context, AppRoutes.DASHBOARD_PAGE);
                        },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)) ,
                            backgroundColor: Colors.blue
                          ),
                          child: Text("Get Started",style: mTextStyle20(color: Colors.white),),),
                  ),

                  
                ],
              ),
            )
          
          ]
        ),
      ),
    );
  }
}
