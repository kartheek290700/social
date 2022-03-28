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
        color: Colors.green,
        opacity: 1,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
          padding: MaterialStateProperty.all(EdgeInsets.all(15)),
        ),
      ),
      primaryIconTheme: IconThemeData(
        color: Colors.black,
        opacity: 1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
        isDense: true,
        labelStyle: TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  ));
}