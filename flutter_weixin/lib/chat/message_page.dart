
import 'package:flutter/material.dart';
import '../chat/conversation_data.dart';
import '../chat/conversation_item.dart';


class MessagePage extends StatefulWidget
{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateMessagePage();
  }

}

class _StateMessagePage extends State<MessagePage>
{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView.builder(
        itemCount: messageData.length,
          itemBuilder: (BuildContext context,int index){
        return new MessageItem(messageData[index]);
      }),
    );
  }
}