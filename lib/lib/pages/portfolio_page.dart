

import 'package:flutter/material.dart';

import '../main.dart';
import '../utils/AppColors.dart';
import '../utils/common_string.dart';
import '../utils/text_style.dart';

class PortfolioPage extends StatefulWidget {
  @override
  _PortfolioPageState createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {

  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(
          left: 20.0, right: 20.0, top: 0, bottom: 0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text("Formation", style: headerTextStyle,),
            ),
            Container(
              child: Text(formation, style: bodyTextStyle),
              margin: EdgeInsets.only(top: 20, bottom: 10),
            ),
            Column(
              children: [
                Row(
                  children: <Widget>[
                    _itemWidget("Institut International De Technologie\n",width),
                    _itemWidget("Faculté Science Economie et Gestion",width),
                    _itemWidget("Lycée 20 mares 1956",width),

                    /*Expanded(
                        flex:1,
                        child: Container(
                            margin:EdgeInsets.all(3),
                            height: 100,
                            color: cardBGColor)
                    )
                    Expanded(
                        flex:1,
                        child: Container(
                            margin:EdgeInsets.all(3),
                            height: 100,
                            color: cardBGColor)
                    ),*/
                  ],
                ),
              ],
            )
            /*FutureBuilder(
              future: FirebaseController().getPortfolio().once(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {}

                if (snapshot.hasData) {
                  var list = snapshot.data;
                  return Wrap(
                    children: [
                      for (var model in list.value)
                        _itemWidget(
                          MediaQuery.of(context).size.width * 0.36,
                          image: model['image'],
                          name: model['name'],
                          description: model['description'],
                        )
                    ],
                  );
                }
                return SizedBox.shrink();
              },
            )*/
          ],
        ),
      ),

    );
  }

  Widget _itemWidget(title,width) {
    return Expanded(
      flex: 1,
     // width: width,
      child: InkWell(
        onTap: () {
          scaffoldkey.currentState!.showBottomSheet((context) {
            return Container(
             // color: backgroundLight,
              width: width,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 300,
                    alignment: Alignment.center,
                   /* child: AppImageWidget(
                      imageUrl: image,
                      fit: BoxFit.fitWidth,
                    ),*/
                    color: cardBGColor,
                  ),
                 // Text("fffff"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 10),
                    child: Text(name, style: headerTextStyle),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, top: 5),
                    child: Text(description6, style: bodyTextStyle),
                  ),
                ],
              ),
            );
          });
        },
          child:Container(
            margin: EdgeInsets.all(2),
          //  height: 100,
            width: 500,
           // color: Colors.lightGreen,
            alignment: Alignment.center,
            child: Text(title),
          )

        /*  child: Card(
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                // color: cardBGColor,
                // image: DecorationImage(image: Image.network(image).image),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 /* Image.network(
                    image,
                    fit: BoxFit.fitWidth,
                  ),*/
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      name,
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),*/
      ),
      
      
      
      
      
    );
  }
}