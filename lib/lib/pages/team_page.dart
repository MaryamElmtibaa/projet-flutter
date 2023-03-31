import 'package:flutter/material.dart';

import '../utils/text_style.dart';

class TeamPage extends StatelessWidget {
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
              child: Text("Compétances",style: headerTextStyle,),

            ),
            SizedBox(height: 10,),
            _itemWidget("Langage :  ","\nJAVA, C#, PHP, IA, C"),
            _itemWidget("Framework : "," \nSymfony, Laravel, Asp.net, Sélénium"),
            _itemWidget("Conception : ","\nMerise, Uml"),
            _itemWidget("SGBD : "," \nSql Server, Wampserver, Laragon\n\n"),





            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Langues",style: headerTextStyle,),

            ),
            SizedBox(height: 10,),
            _itemWidget("Arabe : ","\nMaternelle"),
            _itemWidget("Francais : ","\nMoyen"),
            _itemWidget("Anglais : ","\nMoyen\n\n"),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Associative",style: headerTextStyle,),

            ),
            SizedBox(height: 10,),
            _itemWidget("Membre active Dans Club PYTON ","IIT"),
            _itemWidget("Travail En Equipe",""),
            _itemWidget("Gestion De Temps",""),





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
         Center(child: Text(value,style: bodyTextStyle,)),
        ],
      ),
    );
  }
  Widget _itemWidgete(title,value){
    return Container(
      margin: EdgeInsets.only(top:10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: [
              Container(child: Text(title,style: subHeaderTextStyle,)),
              Text(value,style: bodyTextStyle,),

            ],
          ),
        ],
      ),
    );
  }
}