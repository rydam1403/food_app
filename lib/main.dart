import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      home: SafeArea(
          child: Scaffold(
              backgroundColor: Colors.white,
              body: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 30.0, bottom: 50.0),
                    child: Center(
                      child: Image(image: AssetImage('images/foodlogo.png')),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 25.0),
                    child: Text(
                      'Sign Up Free Account',
                      style: TextStyle(
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  Column(
                    children: <Widget>[
                      Fieldinput(type: 'UserName', texttype: TextInputType.text),
                      Fieldinput(type: 'Email', texttype: TextInputType.emailAddress),
                      Fieldinput(type: 'Password',texttype: TextInputType.visiblePassword),
                      Fieldinput(type: 'Phone',texttype: TextInputType.number)
                    ],
                  ),

                  SizedBox(
                    height: 27.0,
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 50.0,right: 50.0),
                      child: RaisedButton(
                          color: Colors.deepPurpleAccent,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)
                          ),
                          child: Text(
                            'Sign UP',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: (){},
                        elevation: 0.0,
                      ),
                  )

                ],
              )
          )
      ),
    );
  }

  Widget Fieldinput({String type, TextInputType texttype}) =>
      Container(
        margin: EdgeInsets.only(left:20.0,right:20.0,bottom:7.7),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.grey[300],
              labelText: '$type',
              labelStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[600],
                fontSize: 20.0
              ),
              hintText: '$type',
              hintStyle: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
                fontSize: 20.0,
              ),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0)
              ),
            ),
            keyboardType: texttype,
          ),
        ),
      );
}
