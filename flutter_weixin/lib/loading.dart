import 'package:flutter/material.dart';
import 'dart:async';

class LodingPage extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StateLodingPage();
  }
}

class _StateLodingPage extends State<LodingPage>
{

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    new Future.delayed(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacementNamed("app");
    });
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      child: Image.asset("images/loading.jpg"),
    );
  }

}
