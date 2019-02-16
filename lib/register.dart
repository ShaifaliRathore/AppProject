import 'package:flutter/material.dart';
import 'package:iittm_app/login.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  String url = "http://localhost/Shaifali/MyProject/WebService.php";

  Future<String> makeRequest() async {
    var response = await http.get(Uri.encodeFull(url));
  }

  @override
  void initState() {
    this.makeRequest();
  }

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: new PreferredSize(
        child: new Container(
          //height: MediaQuery.of(context).size.height/8,
          padding: new EdgeInsets.only(
              top: MediaQuery.of(context).padding.top
          ),
          child: new Padding(
            padding: const EdgeInsets.only(
                left: 30.0,
                top: 20.0,
                bottom: 20.0
            ),
            child: new Text(
              'Register Here',
              style: new TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white
              ),
            ),
          ),

          decoration: new BoxDecoration(
              gradient: new LinearGradient(
                colors: [
                  Color(0xFFf45d27),
                  Color(0xFFf5851f),
                ],
              ),
              boxShadow: [
                new BoxShadow(
                  color: Colors.grey[500],
                  blurRadius: 20.0,
                  spreadRadius: 1.0,
                )
              ]
          ),
        ),
        preferredSize: new Size(
            MediaQuery.of(context).size.width,
            150.0
        ),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 30, left: 12, right: 12),
              child: Column(
                  children: <Widget>[

                    Container(
                      height: MediaQuery.of(context).size.height/12.5,
                      margin: EdgeInsets.only( left: 12, right: 12),
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
                        controller: usernameController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.person),
                            labelText: 'Username'
                        ),
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height/12.5,
                      margin: EdgeInsets.only(top: 15, left: 12, right: 12),
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
                        controller: emailController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.mail),
                            labelText: 'Email Id'
                        ),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.only(top: 15, left: 12, right: 12),
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
                        controller: mobileController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.phone_android),
                            labelText: 'Mobile number'
                        ),
                      ),
                    ),

                    /*Container(
                      width: 300,
                      height: 55,
                      margin: EdgeInsets.only(top: 12, left: 12, right: 12),
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
                            icon: Icon(Icons.person),
                            labelText: 'User type'
                        ),
                        obscureText: true,
                      ),
                    ),*/

                    Container(
                      height: MediaQuery.of(context).size.height/12.5,
                      margin: EdgeInsets.only(top: 15, left: 12, right: 12),
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
                        controller: passwordController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            labelText: 'Password'
                        ),
                        obscureText: true,
                      ),
                    ),

                    Container(
                      height: MediaQuery.of(context).size.height/12.5,
                      margin: EdgeInsets.only(top: 15, left: 12, right: 12),
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
                        controller: confirmPasswordController,
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(Icons.lock),
                            labelText: 'Confirm Password'
                        ),
                        obscureText: true,
                      ),
                    ),

                    Container(
                      width: MediaQuery.of(context).size.width/3,
                      //height: MediaQuery.of(context).size.height/3,
                      margin: EdgeInsets.only(top: 35),
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Color(0xFFf45d27),
                                Color(0xFFf5851f),
                              ]
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                            )
                          ],
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      child: Center(
                        child: RaisedButton(
                          color: Colors.transparent,
                          child: Text(
                              'Register',
                              style:TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17.0,
                                  color: Colors.white
                              )),
                          elevation: 0.0,
                          onPressed: () {
                            _submit();
                          },
                        ),
                      ),
                    ),
                  SizedBox(height: 10.0,),
                  FlatButton(
                    padding: EdgeInsets.only(
                      top: 10,
                    ),
                    child: Text(
                        "Already have an account! Login",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            //fontStyle: FontStyle.italic,
                            color: Color(0xFF218F76)
                        )),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
                  )
                  ],
              ),
            )
          ],
        ),
      ),
    );
  }
  _submit() {
    print("hello");
    String username = usernameController.text;
    String email = emailController.text;
    String mobile = mobileController.text;
    String password = passwordController.text;
    String url2 = url+"?username="+username+"&email="+email+"&mobile="+mobile+"&password="+password;
  }
}




