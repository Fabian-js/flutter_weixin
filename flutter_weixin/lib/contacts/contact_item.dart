import 'package:flutter/material.dart';
import 'contact_model.dart';

class ContactHeaderItem extends StatelessWidget
{
  final String title;
  final String imagePath;

  ContactHeaderItem({this.title,this.imagePath});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(left: 10),
      height: 56,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.asset(imagePath,width: 36,height: 36,),
          ),
          Expanded(child: Text(title,style: TextStyle(fontSize: 18.0,color: Color(0xff353535)),))
        ],
      ),
    );
  }


}


class ContactItem extends StatelessWidget {

  final ContactVO item;

  ContactItem({this.item});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 10),
      height: 56,
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: 10),
            child: Image.network(item.avatarUrl,height: 36,width: 36,fit: BoxFit.cover,)
          ),
          Expanded(child: Text(
            item.name, style: TextStyle(fontSize: 18.0, color: Color(0xff353535)),))
        ],
      ),
    );
  }


}