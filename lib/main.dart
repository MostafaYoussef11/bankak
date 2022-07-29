// ignore_for_file: camel_case_types

import 'package:bankk/Screen/bottomBar.dart';
import 'package:bankk/utils/app_styles.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: primary,
    ),
    home: BottomBar(),
  ));
}




