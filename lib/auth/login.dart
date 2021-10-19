import 'package:flutter/material.dart';
import 'package:genshin_impact_album_info/homeExample.dart';

var PoppinsMedium = TextStyle(fontFamily: 'Poppins-Medium'); 

class login extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 90.0, bottom: 20.0),
            child: Center(
              child: Text(
                'Login UI Sample',
                style: TextStyle(
                  fontFamily: 'Poppins-Medium',
                  fontSize: 20,
                  fontWeight: FontWeight.w700
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                labelText: 'someone@mail.com',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins-Medium'
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
                labelText: 'yourpass123',
                labelStyle: TextStyle(
                  fontFamily: 'Poppins-Medium'
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
                      height: 55.0,
                      child: new RawMaterialButton(
                        shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        fillColor: Color(0xFF77ACF1),
                        elevation: 0.0,
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontFamily: 'Poppins-Medium',
                            fontSize: 16,
                            color: Colors.white
                          ),
                        ),
                        onPressed: (){},
                      ),
                    ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20.0, right: 20.0),
              child: SizedBox(
                      height: 55.0,
                      child: new RawMaterialButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          side: BorderSide(color: Colors.black),
                          ),
                        fillColor: Colors.white,
                        elevation: 0.0,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              margin: EdgeInsets.only(right: 10.0),
                              child: Icon(
                                Icons.account_circle_outlined,
                                color: Colors.black,
                                size: 22.0,
                              ),
                            ),
                            Container(
                              child: Text(
                                'Register using social media',
                                style: TextStyle(
                                  fontFamily: 'Poppins-Medium',
                                  fontSize: 16,
                                  color: Colors.black
                                ),
                              ),
                            ),
                          ],
                        ),
                        onPressed: (){},
                      ),
                    ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
          child: SizedBox(
                    height: 55.0,
                    child: new RawMaterialButton(
                      shape: new RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      fillColor: Color(0xFFEEEEEE),
                      elevation: 0.0,
                      child: Text(
                        'Skip for now',
                        style: TextStyle(
                          fontFamily: 'Poppins-Medium',
                          fontSize: 16,
                          color: Colors.black
                        ),
                      ),
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return home_example();
                        }));
                      },
                    ),
                  ),
      ),
    );
  }
}