// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterworkspace/modules/add_card_screen.dart';
import 'package:flutterworkspace/modules/payment_screen.dart';
import 'package:flutterworkspace/layout/home_layout.dart';
import 'package:flutterworkspace/modules/edit_personal_info_screen.dart';
import 'package:flutterworkspace/modules/login_screen.dart';
import 'package:flutterworkspace/layout/onboarding_layout_screen.dart';
import 'package:flutterworkspace/modules/reset_password_screen.dart';
import 'package:flutterworkspace/modules/saved_cards_screen.dart';
import 'package:flutterworkspace/modules/sign_up.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp
      (
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,


          ),
          iconTheme: IconThemeData(
            color: Colors.black,
          ),

        ),

      ),

      debugShowCheckedModeBanner: false,
      home: Payment(),
    );

  }

}