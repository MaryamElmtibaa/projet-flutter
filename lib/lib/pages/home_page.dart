
import 'package:flutter/material.dart';

import '../utils/common_string.dart';
import '../utils/text_style.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 20),
            child: Center(
                child: CircleAvatar(
              backgroundImage: AssetImage("assets/profil.png"),
                  radius: 80,
            )
            ),

          ),Text(
            designation,
            style: subHeaderTextStyle,
          ),
          Text(
            description,
            style: bodyTextStyle,

          ), Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profil.png"),
                radius: 50,
              )
          ),
        ],












      ),

    );
  }
}
