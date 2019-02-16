import 'package:flutter/material.dart';
import 'package:iittm_app/notification.dart';
import 'package:iittm_app/news.dart';
import 'package:iittm_app/about.dart';
import 'package:iittm_app/feedback.dart';
import 'package:iittm_app/photogallery.dart';
import 'package:carousel_pro/carousel_pro.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget Image_Carousel = new Container(
      height: 250.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          NetworkImage('http://www.iittm.ac.in/photo/gallery%202014-2015/tum/4.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/gallery%202014-2015/tum/6.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/gallery%202014-2015/tum/11.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/new%20photo/10378091_10204063554768384_465661619607101092_n.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/new%20photo/DSC_4481.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/new/DSC_0135.jpg'),
          NetworkImage('http://www.iittm.ac.in/photo/DSC05982.JPG'),
          NetworkImage('http://www.iittm.ac.in/photo/DSC01406.JPG'),
        ],
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 2000),
      ),
    );

    return Scaffold(
      /*appBar: new PreferredSize(
        child: new Container(
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
              'Home',
              style: new TextStyle(
                  fontSize: 20.0,
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
      ),*/

      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Color(0xFFf5851f),
      ),
      drawer: MyDrawer(),
      body: ListView(
          children: <Widget>[
            Image_Carousel,
            SizedBox(height: 15.0,),
            Container(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 150.0,
                    child:  RaisedButton(
                      color: Colors.lightGreen,
                      child: Text(
                          'Notifications',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Notifications()),
                        );
                      },
                    ),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 150.0,
                    child:  RaisedButton(
                      color: Colors.lightBlueAccent,
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Text(
                          'News',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),

                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 8.0,
                      onPressed: () {
                        HomePage();
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => News()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.0,),
            Container(
              padding: EdgeInsets.only(left: 35.0, right: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 150.0,
                    child:  RaisedButton(
                      color: Colors.orangeAccent,
                      child: Text(
                          'Gallery',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      //padding: EdgeInsets.symmetric(horizontal: 24.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PhotoGallery()),
                        );
                      },
                    ),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: 160.0,
                    height: 150.0,
                    child:  RaisedButton(
                      color: Colors.indigo[200],
                      child: Text(
                          'Help',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                      onPressed: () {
                        HomePage();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ]
      ),
            /*SizedBox(height: 15.0,),
           RaisedButton(
              color: Colors.lightGreen,
              child: Text(
                  'Notifications',
                  style:TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                      color: Colors.white
                  )),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 8.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Notifications()),
                );
              },
            ),
            RaisedButton(
              color: Colors.lightBlueAccent,
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(
                  'News',
                  style:TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                      color: Colors.white
                  )),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 8.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => News()),
                );
              },
            ),
            RaisedButton(
              color: Colors.orangeAccent,
              child: Text(
                  'Gallery',
                  style:TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                      color: Colors.white
                  )),
              //padding: EdgeInsets.symmetric(horizontal: 24.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              elevation: 8.0,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PhotoGallery()),
                );
              },
            ),
            RaisedButton(
              color: Colors.indigo[300],
              child: Text(
                  'Help',
                  style:TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 16.0,
                      color: Colors.white
                  )),
              elevation: 8.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              onPressed: () {
                HomePage();
                Navigator.pop(context);
              },
            ),*/
            /*Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 140.0,
                    height: 100.0,
                    child:  RaisedButton(
                      color: Colors.lightGreen,
                      child: Text(
                          'Notifications',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Notifications()),
                        );
                      },
                    ),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: 140.0,
                      height: 100.0,
                      child:  RaisedButton(
                        color: Colors.lightBlueAccent,
                        padding: EdgeInsets.symmetric(horizontal: 24.0),
                        child: Text(
                            'News',
                            style:TextStyle(
                                fontWeight: FontWeight.w800,
                                fontSize: 18.0,
                                color: Colors.white
                            )),

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                        elevation: 8.0,
                        onPressed: () {
                          HomePage();
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => News()),
                          );
                        },
                      ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.0,),
            Container(
              padding: EdgeInsets.only(left: 15.0, right: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ButtonTheme(
                    minWidth: 140.0,
                    height: 100.0,
                    child:  RaisedButton(
                      color: Colors.orangeAccent,
                      child: Text(
                          'Gallery',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      //padding: EdgeInsets.symmetric(horizontal: 24.0),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      elevation: 8.0,
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PhotoGallery()),
                        );
                      },
                    ),
                  ),
                  Spacer(),
                  ButtonTheme(
                    minWidth: 140.0,
                    height: 100.0,
                    child:  RaisedButton(
                      color: Colors.indigo[300],
                      child: Text(
                          'Help',
                          style:TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 18.0,
                              color: Colors.white
                          )),
                      elevation: 8.0,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
                      onPressed: () {
                        HomePage();
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ],
              ),
            )
          ]
      ),*/
    );
  }
}

class MyDrawer extends StatelessWidget {
  //String email,name,profileimg,background;
  //my_drawer({this.background,this.profileimg,this.name,this.email});
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Shaifali Rathore',
                style:TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                )
            ),
            accountEmail: Text('shaifalirathore786@gmail.com'),
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage('https://upload.wikimedia.org/wikipedia/commons/b/b4/Iittm_rama.jpg')),
              gradient: LinearGradient(
                colors: [
                  Color(0xFFf45d27),
                  Color(0xFFf5851f),
                ],
              ),
            ),
            currentAccountPicture: GestureDetector(
              child: CircleAvatar(
                //radius: 50.0,
                backgroundColor: Color(0xFF1B5E20),
                child: Icon(Icons.person, color: Colors.white, size: 40.0),
              ),
            ),
          ),
          ListTile(leading: Icon(Icons.home, color: Color(0xFF1B5E20)),
            title: Text('Home'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          HomePage()));
            },
          ),
          ListTile(leading: Icon(Icons.notifications, color: Color(0xFF1B5E20)),
            title: Text('Notification'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Notifications()));
            },
          ),
          ListTile(leading: Icon(Icons.chrome_reader_mode, color: Color(0xFF1B5E20)),
            title: Text('News'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          News()));
            },
          ),
          ListTile(leading: Icon(Icons.photo_library, color: Color(0xFF1B5E20)),
            title: Text('Photo Gallery'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          PhotoGallery()));
            },
          ),
          Divider(),
          /*ListTile(leading: Icon(Icons.import_contacts, color: Color(0xFF1B5E20)),
              title: Text('Courses'),),
            ListTile(leading: Icon(Icons.assignment, color: Color(0xFF1B5E20)),
              title: Text('Syllabus'),
            ),*/
          ListTile(leading: Icon(Icons.location_city, color: Color(0xFF1B5E20)),
            title: Text('About Us'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          AboutUs()));
            },
          ),
          ListTile(leading: Icon(Icons.help, color: Color(0xFF1B5E20)),
            title: Text('Help'),),
          ListTile(leading: Icon(Icons.feedback, color: Color(0xFF1B5E20)),
            title: Text('Feedback'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) =>
                          FeedbackPage()));
            },
          ),
          Divider(),
          ListTile(leading: Icon(Icons.lock, color: Color(0xFF1B5E20)),
            title: Text('Reset Password'),),
          ListTile(leading: Icon(Icons.input, color: Color(0xFF1B5E20)),
            title: Text('Logout'),),
        ],
      ),
    );
  }
}




