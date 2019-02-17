import 'package:flutter/material.dart';
import 'package:iittm_app/home.dart';
import 'package:iittm_app/register.dart';
//import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFf45d27),
                        Color(0xFFf5851f),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(70)
                    )
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.center,
                        child: Image.asset('assets/Icon1.png'),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 32,
                            right: 32,
                            top: 10.0,
                        ),
                        child: Text('Indian Institute of Travel \n & Tourism Management',
                          style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              //width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(top: 30),
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    //height: 55,
                    padding: EdgeInsets.only(
                        left: 16, right: 10
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.person),
                          labelText: 'Username'
                      ),
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    //height: 55,
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(
                        left: 16, right: 16
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                          )
                        ]
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          icon: Icon(Icons.lock),
                          labelText: 'Password'
                      ),
                      obscureText: true,
                    ),
                  ),

                 /* Container(
                    width: MediaQuery.of(context).size.width/1.2,
                    //height: 55,
                    margin: EdgeInsets.only(top: 16),
                    padding: EdgeInsets.only(
                        left: 16, right: 16
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 5,
                          )
                        ]
                    ),
                    child: new CheckboxListTile(
                      value: ,
                      onChanged: _onChanged,
                      title: new Text("Remember me"),
                      controlAffinity: ListTileControlAffinity.leading,
                    ),

                  ),*/

                  SizedBox(height: 10.0,),
                  FlatButton(
                    padding: EdgeInsets.only(
                      left: 150,top: 5,
                    ),
                    child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey,
                        )),
                    onPressed: () {
                    },
                  ),

                  Container(
                    height: 40,
                    width: MediaQuery.of(context).size.width/3,
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                              Color(0xFFf45d27),
                              Color(0xFFf5851f),
                            ]
                        ),
                        borderRadius: BorderRadius.all(
                            Radius.circular(10)
                        )
                    ),

                    child: Center(
                      child: RaisedButton(
                        color: Colors.transparent,
                        child: Text(
                            'LOGIN',
                            style:TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 15.0,
                                color: Colors.white
                            )),
                        elevation: 0.0,
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => HomePage()),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(height: 5.0,),
                  FlatButton(
                    child: Text(
                        "Don't have an account? Register",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            //fontStyle: FontStyle.italic,
                            color: Color(0xFF218F76)
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register()),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
          ),
      ),
    );
  }
}
