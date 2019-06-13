import 'package:flutter/material.dart';
import 'chat/message_page.dart';
import 'found/found.dart';
import 'profile/profile.dart';
import 'contacts/contact_page.dart';

class ItemModel
{
  ItemModel(this.title,this.selectImage,this.normalImage);
  String title;
  String selectImage;
  String normalImage;

}


class App extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateApp();
  }

}

class _StateApp extends State<App>
{

  var _selectIndex = 0;
  final selColor  = Color(0xFF46c01b);
  final normalColor = Color(0xFF999999);

  final itemModels = [ItemModel("微信", "images/weixin_pressed.png", "images/weixin_normal.png"),
  ItemModel("通讯录", "images/contact_list_pressed.png", "images/contact_list_normal.png"),
    ItemModel("发现", "images/find_pressed.png", "images/find_normal.png"),
    ItemModel("发现", "images/profile_pressed.png", "images/profile_normal.png")];


  PageController pageController = PageController(initialPage: 0);




  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: new Text("微信"),
        actions: <Widget>[
          GestureDetector(onTap: (){
            Navigator.pushNamed(context, "search");
          },
          child: Icon(Icons.search)),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20.0),
            child: GestureDetector(
              onTap: (){

              },
              child: Icon(Icons.add),
            ),
          )
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectIndex,
        onTap: ((index){
          setState(() {
//            _selectIndex = index;
            pageController.jumpToPage(index);
          });
          }),
        items: [
          _currentItem(0),
          _currentItem(1),
          _currentItem(2),
          _currentItem(3),
        ],
      ),
      body: PageView.builder(
        controller: pageController,
          itemBuilder: (BuildContext context, int index){
        _selectIndex = index;
        return _currentPage();
      },
      onPageChanged: (int index){
          setState(() {
            _selectIndex = index;
          });
      },
      )
    );
  }

  Widget _currentPage()
  {
    if(_selectIndex == 0){
      return MessagePage();
    }else if (_selectIndex == 2){
      return FoundPage();
      }else if(_selectIndex ==1){
      return Contacts();
    }
    else{
      return ProfilePage();
    }


  }


  Text _currentText(int currentIndex)
  {
    var model = itemModels[currentIndex];
    if(currentIndex == _selectIndex){
      return Text(model.title,style: TextStyle(color: selColor),);
    }else{
      return Text(model.title,style: TextStyle(color: normalColor),);
    }
  }


  Image _currentImage(int currentIndex)
  {
    var model = itemModels[currentIndex];
    if(currentIndex == _selectIndex){
      return Image.asset(model.selectImage,width: 32.0,height: 28.0);
    } else{
      return Image.asset(model.normalImage,width: 32.0,height: 29.0);
    }
  }

  BottomNavigationBarItem _currentItem(int currentIndex)
  {
    return  new BottomNavigationBarItem(
        title: _currentText(currentIndex),
        icon: _currentImage(currentIndex)
    );
  }
}