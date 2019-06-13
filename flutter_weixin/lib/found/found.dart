import 'package:flutter/material.dart';
import 'wechat_item.dart';

class FoundPage extends StatelessWidget
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10)),
          WeChatItem(title: "朋友圈",imagePath: 'images/icon_friends.png'),


          Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                WeChatItem(title: "扫一扫",imagePath: 'images/icon_scan.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WeChatItem(title: "摇一摇",imagePath: 'images/icon_shake.png'),
              ],
            ),
          ),

          Container(
            decoration: BoxDecoration(
                color: Colors.white
            ),
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                WeChatItem(title: "看一看",imagePath: 'images/icon_look.png'),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WeChatItem(title: "搜一搜",imagePath: 'images/icon_search.png'),
              ],
            ),
          ),

          

        ],
      ),
    );
  }


}
