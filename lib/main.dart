import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MaterialApp(
    // This removes the Debug that is by default present in the left top cornor of the app 
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}