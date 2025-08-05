import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_api/ui_helper/ui_helper.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(height: 300,),
                TextField(
                  controller: nameController,
                  decoration: mInputDecoration(
                    lableText: "Name",
                    hintText: "Enter your name",
                  ),
                ),
                SizedBox(height: 11,),
                TextField(
                  controller: phoneNumberController,
                  decoration: mInputDecoration(
                    pexfixIcon: Icons.phone,
                  hintText: "Phone Number",
                  lableText: "Phone Number",
                ),),
                SizedBox(height: 11,),
                TextField(
                  controller: passwordController,
                  decoration: mInputDecoration(
                  hintText: "Password",
                  lableText: "Password",
                  pexfixIcon: Icons.lock,
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}