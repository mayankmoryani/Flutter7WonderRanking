import 'package:flutter/material.dart';
import 'package:wondersofworld/screens/firstscreen.dart';
import 'package:wondersofworld/screens/secondscreen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/firstscreen',
    routes:{
      '/firstscreen':(context) => Firstscreen(),
      '/secondscreen':(context) => Secondscreen(),

    },
  ));
}
