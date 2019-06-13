import 'package:flutter/material.dart';
import '../found/wechat_item.dart';

class ProfilePage extends StatelessWidget
{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.white
            ),
//            margin: const EdgeInsets.only(left: 15,top: 20),
            padding: const EdgeInsets.only(left: 15,top: 20,bottom: 15),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Container(
                  child: Image.asset("images/tutu.png",height: 70.0,width: 70.0,fit: BoxFit.cover,),
                ),
                Expanded(
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                child: Column(
//                  mainAxisAlignment: MainAxisAlignment.,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("何俊松",style: TextStyle(fontSize: 18,color: Color(0xff353535),fontWeight: FontWeight.bold),),
                    Padding(
                    padding: EdgeInsets.only(top: 10,bottom: 10),
                    ),
                    Text("微信号：hjs-funyun")
                  ],
                ),
                ),
                ),
                Container(
//                  color: Colors.red,
                  child: Row(
//                    mainAxisAlignment: MainAxisAlignment.spaceAround,
//                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Image.asset("images/code.png",height: 14.0,width: 14.0,fit: BoxFit.cover,),
                      Icon(Icons.chevron_right,color: Color(0xff999999),)
                    ],
                  ),
                )

              ],
            ),
          ),

          Container(

            margin: const EdgeInsets.only(top: 10),
            child: WeChatItem(title: '钱包',imagePath: "images/icon_me_money.png",),
          ),

          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            child: Column(
              children: <Widget>[
                WeChatItem(title: '收藏',imagePath: "images/icon_me_collect.png",),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WeChatItem(title: '相册',imagePath: "images/icon_me_photo.png",),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WeChatItem(title: '卡包',imagePath: "images/icon_me_card.png",),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xffd9d9d9),
                  ),
                ),
                WeChatItem(title: '表情',imagePath: "images/icon_me_smile.png",),
              ],
            )
          ),
          Container(
            margin: const EdgeInsets.only(top: 10),
            color: Colors.white,
            child: WeChatItem(title: "设置",imagePath: 'images/icon_me_setting.png',),
          )


          
        ],
      ),
    );
  }
  
  
}