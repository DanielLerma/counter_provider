// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:special_counter/home_page.dart';
import 'package:special_counter/providers/color_provider.dart';
import 'package:special_counter/providers/counter_provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //     home: MultiProvider(providers: [
      //   ChangeNotifierProvider<CounterProvider>(
      //     create: (context) => CounterProvider(),
      //   ),
      //   ChangeNotifierProvider<ColorProvider>(
      //     create: (context) => ColorProvider(),
      //   ),
      // ], child: HomePage())
      home: ChangeNotifierProvider<CounterProvider>(
        create: (context) => CounterProvider(),
        child: HomePage(),
      ),
    );
  }
}
