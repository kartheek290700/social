import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/' : (context) => Login(),
    },
    theme: ThemeData(
      primaryColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
        opacity: 1,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
        ),
      ),
    ),
  ));
}