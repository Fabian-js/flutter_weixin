import 'package:flutter/material.dart';

class WeChatItem extends StatelessWidget
{

  final String title;
  final String imagePath;

  WeChatItem({this.title,this.imagePath});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
        color: Colors.white
      ),
      margin: const EdgeInsets.only(left:0),
      height: 50,
      child: Row(

//        mainAxisAlignment: MainAxisAlignment.start,
//        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
          child: Image.asset(imagePath,width: 32,height: 32,),
            margin: const EdgeInsets.only(left: 15.0,right: 15),
          ),
          Expanded(
          child: Text(title,style: TextStyle(color: Color(0xFF333333),fontSize: 16.0),),
          ),
          Container(
            margin: const EdgeInsets.only(right: 10),
              child: Icon(Icons.chevron_right,color: Color(0xFF999999),),
            )

        ],
      ),
    );
  }

}