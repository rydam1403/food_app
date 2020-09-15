import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
          child: Scaffold(
        body: Column(
          children: <Widget>[
            Container(
              color: Colors.blue[600],
//              height: MediaQuery.of(context).size.height / 3.4,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 5.0,right: 10.0),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Image(
                        image: AssetImage('images/foodlogo.png'),
                        width: 100.0,
                        height: 50.0,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                 ListView(
                   scrollDirection: Axis.horizontal,
                   children: <Widget>[
                     
                   ],
                 )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
