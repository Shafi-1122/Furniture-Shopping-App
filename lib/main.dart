// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_app/addedproductspage.dart';
import 'package:furniture_app/furniture_app_secondpage.dart';
import 'package:provider/provider.dart';

import 'ProductProvider.dart';
import 'homepage.dart';
// import 'provider'
void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => ProdcutProvider()),
    ],
    child: const MyApp())
    );
   
}



