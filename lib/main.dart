import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop_completed/custom_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.blueGrey,
                radius: 50,
                backgroundImage: /*AssetImage*/ NetworkImage(
                    "https://media-exp1.licdn.com/dms/image/C5603AQFkOJTy-03hxw/profile-displayphoto-shrink_800_800/0?e=1608768000&v=beta&t=qOt9hTGcNhmjIQqQKVlllFxiBmVMbcUvEj81ii37Y_Y"),
              ),
              Text(
                'Filipe Sousa',
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico'),
              ),
              Text(
                'GRANDE HEAD',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[100],
                  letterSpacing: 2.5,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CustomCard(
                  text: '+351 220430312',
                  icon:
                      Platform.isAndroid ? Icons.phone : CupertinoIcons.phone),
              CustomCard(
                  text: 'filipe.sousa@fraunhofer.pt',
                  icon: Platform.isAndroid ? Icons.mail : CupertinoIcons.mail),
            ],
          ),
        ),
      ),
    );
  }
}
