import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 3.4,
            decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.0),
                    bottomRight: Radius.circular(20.0))),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, right: 10.0),
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
                  height: 20.0,
                ),
                Container(
                  height: 120.0,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Expanded(
                        child: UpperMenu(ititle: 'drink2', iname: 'DRINK'),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: UpperMenu(ititle: 'pizza', iname: 'PIZZA'),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: UpperMenu(ititle: 'burger2', iname: 'BURGER'),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child:
                            UpperMenu(ititle: 'sandwitch2', iname: 'SANDWICH'),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child:
                            UpperMenu(ititle: 'icecream', iname: 'ICE-CREAM'),
                      ),
                      SizedBox(
                        width: 18.0,
                      ),
                      Expanded(
                        child: UpperMenu(ititle: 'noodles', iname: 'NOODLES'),
                      ),
                      SizedBox(
                        width: 3.0,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30.0, left: 16.0),
            height: 40.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                BottomMenu(menu: 'CAKE', c: 0xFFF484B1),
                SizedBox(
                  width: 30.0,
                ),
                BottomMenu(menu: 'PIE', c: 0xFFAB47BC),
                SizedBox(
                  width: 30.0,
                ),
                BottomMenu(menu: 'ICE-CREAM', c: 0xFF7986CB),
                SizedBox(
                  width: 30.0,
                ),
                BottomMenu(menu: 'CANNOLI', c: 0xFF40C4FF),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 34.0,
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 30.0),
            child: Text(
              'Most Popular',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.2,
                fontWeight: FontWeight.bold,
                fontSize: 30.0,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Card(
              elevation: 2.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.grey,
                )),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5.0, left: 12.0, bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('images/vchef.jfif'),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Olea Powers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 3.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3.0, right: 15.0),
                                child: Text(
                                  '160',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: AssetImage('images/plook.png')),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: rate(s: 4),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Card(
              elevation: 2.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.grey,
                )),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5.0, left: 12.0, bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('images/vchef.jfif'),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Olea Powers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 3.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3.0, right: 15.0),
                                child: Text(
                                  '160',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: AssetImage('images/plook.png')),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: rate(s: 4),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Card(
              elevation: 2.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.grey,
                )),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5.0, left: 12.0, bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('images/vchef.jfif'),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Olea Powers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 3.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3.0, right: 15.0),
                                child: Text(
                                  '160',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: AssetImage('images/plook.png')),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: rate(s: 4),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 1.1,
            margin: EdgeInsets.only(left: 30.0, right: 30.0),
            child: Card(
              elevation: 2.0,
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.grey,
                )),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                    top: 5.0, left: 12.0, bottom: 5.0),
                                child: CircleAvatar(
                                  radius: 20.0,
                                  backgroundImage:
                                      AssetImage('images/vchef.jfif'),
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Olea Powers',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 3.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: Colors.red,
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3.0, right: 15.0),
                                child: Text(
                                  '160',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      width: MediaQuery.of(context).size.width,
                      child: Image(image: AssetImage('images/plook.png')),
                    ),
                    SizedBox(
                      height: 3.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: Colors.grey[400], width: 1.5)),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: Text(
                              'Pizza Margherita',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                letterSpacing: 1.2,
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 5.0),
                            child: rate(s: 4),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }

  Widget UpperMenu({String ititle, String iname}) {
    return Container(
      margin: EdgeInsets.only(left: 10.0, bottom: 10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 40.0,
            child: Image(
              image: AssetImage('images/$ititle.png'),
              height: 43.0,
            ),
          ),
          SizedBox(
            height: 4.0,
          ),
          Text(
            '$iname',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          )
        ],
      ),
    );
  }

  Widget BottomMenu({String menu, int c}) {
    return Container(
      height: 20.0,
      child: RaisedButton(
        color: Color(c),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(22.6)),
        child: Text(
          '$menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        onPressed: () {},
      ),
    );
  }

  rate({double s}) {
    return SmoothStarRating(
        allowHalfRating: true,
        starCount: 5,
        rating: s,
        size: 20.0,
        isReadOnly: false,
        color: Colors.yellow,
        borderColor: Colors.grey,
        spacing: 0.0);
  }
}
