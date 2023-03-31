import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20,right: 20),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Contact ",style: headerTextStyle,),
            ),
            SizedBox(height: 10,),
            _itemWidget("Email : \n","rihemcherif.cr@gmail.com"),
            _itemWidget("Route : \n","Route manzel chaiker km9, Sfax"),

            _itemWidget("Mobile1 : \n","+216 96 274 495 "),
            _itemWidget("Mobile2 : \n","+216 56 274 485 "),

          ],
        ),
      ),
    );
  }
  Widget _itemWidget(title,value){
    return Container(
      margin: EdgeInsets.only(top:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title,style: subHeaderTextStyle,),
          Center(child: Text(value,style: bodyTextStyl,)),
        ],
      ),
    );
  }
}