import 'package:flutter/material.dart';
import 'contact_item.dart';

class ContactHeader extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ContactHeaderItem(title: '新的朋友',imagePath: "images/icon_addfriend.png",),
        ContactHeaderItem(title: "群聊",imagePath: "images/icon_groupchat.png",),
        ContactHeaderItem(title: "公众号",imagePath: "images/icon_public.png",)
      ],
    );
  }
}