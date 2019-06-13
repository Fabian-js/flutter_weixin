import 'package:flutter/material.dart';
//import '';



class Search extends StatefulWidget{


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _StateSearch();
  }
}

class _StateSearch extends State<Search>
{

  FocusNode focusNode = new FocusNode();

  TextEditingController controller = new TextEditingController();

  _requestFocus(){
    FocusScope.of(context).requestFocus(focusNode);
    return focusNode;
  }


  Text _getText(String text)
  {
    return new Text(text,style: TextStyle(
      color: Color.fromARGB(255, 97,113, 153),
      fontSize: 14
    ),);
  }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(child:
      Container(margin: const EdgeInsets.only(top: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10,right: 10),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
//                        padding: EdgeInsets.only(top: 20),
//                          height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(4)),
                        ),
                        child: TextField(
                          autofocus: false,
                          controller: controller,
                          cursorColor: Colors.green,
                          style: TextStyle(
                            fontSize: 16
                          ),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: '搜索',
                              fillColor: Colors.green,
                              icon: Icon(Icons.search),
                              contentPadding: EdgeInsets.only(left: -10,top: 5,right: 5,bottom: 5)

                          ),
                        )
                    ),
                  ),

                  GestureDetector(
                    child: Container(
                      margin: EdgeInsets.only(left: 10),
                      width: 40,
                      child: Text("取消",
                        style: TextStyle(fontSize: 15,color: Color(0xff666666)),),
                    ),
                    onTap: (){
                      Navigator.pop(context);
                    },
                  )
                ],
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 40),
              child: Text("搜索指定内容",
              style: TextStyle(fontSize: 13,color: Color(0xFF999999)),),
            ),

            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText("朋友圈"),
                  _getText("文章"),
                  _getText("公众号")
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  _getText("小程序"),
                  _getText("音乐"),
                  _getText("表情")
                ],
              ),
            )



          ],
        ),),
      )




    );
  }

}