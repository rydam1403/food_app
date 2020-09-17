import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/homepage.dart';

void main() {
  runApp(MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      color: Colors.green,
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.white,
            body: Form(
                key: _formkey,
                child: ListView(
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
                        Fieldinput(
                          type: 'User Name',
                          texttype: TextInputType.text,
                        ),
                        Fieldinput(
                            type: 'Email',
                            texttype: TextInputType.emailAddress),
                        Fieldinput(
                            type: 'Password',
                            texttype: TextInputType.visiblePassword),
                        Fieldinput(
                            type: 'Phone', texttype: TextInputType.number)
                      ],
                    ),
                    SizedBox(
                      height: 27.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 50.0, right: 50.0),
                      child: RaisedButton(
                        color: Colors.deepPurpleAccent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                        child: Text(
                          'Sign UP',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          if(_formkey.currentState.validate()){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return HomePage();
                            }),
                          );
                        }},
                        elevation: 0.0,
                      ),
                    )
                  ],
                ))));
  }

  Widget Fieldinput({String type, TextInputType texttype}) => Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 7.7),
        child: Center(
          child: TextFormField(
            validator: (String value) {
              if (value.isEmpty) {
                return 'Please enter the data';
              }
            },
            decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[300],
                enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50.0)),
                  borderSide: const BorderSide(color: Colors.grey, width: 0.0),
                ),
                labelText: '$type',
                labelStyle: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[600],
                    letterSpacing: 2.0,
                    fontSize: 22.0),
                hintText: '$type',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                )),
            keyboardType: texttype,
          ),
        ),
      );
}
