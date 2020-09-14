import 'package:flutter/material.dart';

class homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: ListView(
          children: <Widget>[
            Container(
//              height: MediaQuery.of(context).size.height,
//              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerRight,
                    child: Image(image: AssetImage('images/foodlogo.png')),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
