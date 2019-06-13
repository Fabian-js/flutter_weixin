import 'package:flutter/material.dart';
import 'loading.dart';
import 'app.dart';
import 'search.dart';

void main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  title: "微信",
  theme: mDefaultTheme,
  routes: <String,WidgetBuilder>{
    "app":(BuildContext content) => new App(),
    "search":(BuildContext context) => new Search()
  },
  home: new LodingPage(),
));

final ThemeData mDefaultTheme = new ThemeData(
  primaryColor: Color(0xff303030),
  scaffoldBackgroundColor: Color(0xFFebebeb),
  cardColor: Color(0xff393a3f)
);
