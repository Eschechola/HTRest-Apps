import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rest_request/widgets/colors/AppColors.dart';
import 'package:rest_request/pages/index/index.dart';
import 'package:load/load.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: AppColors.primaryColor
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override 
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  void chamarNovaPagina(){
    Timer(Duration(seconds: 5), (){
      Navigator.pushReplacement(context, new MaterialPageRoute(
        builder: (BuildContext context) => new Index(),
      ));
    });
  } 

  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.primaryColor, // navigation bar color
      statusBarColor: AppColors.primaryColor, // status bar color
    ));

    chamarNovaPagina();   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: AppColors.primaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.2
              ),
              child: Align(
                alignment: Alignment.center,
                child: 
                  CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(AppColors.thirdColor),
                      backgroundColor: Colors.grey
                    ),
                ),
            ),

            Align(
            alignment: Alignment.center,
            child: 
              Text(
                "Restzando",
                style: TextStyle(
                  color: AppColors.secondaryColor,
                  fontSize: 40,
                  fontFamily: 'Arial'
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}
