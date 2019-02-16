import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iittm_app/home.dart';

class PhotoGallery extends StatefulWidget {
  @override
  _PhotoGalleryState createState() => new _PhotoGalleryState();
}

class _PhotoGalleryState extends State<PhotoGallery> {
  String url = "http://192.168.0.200/Shaifali/MyProject/JSON_Gallery.php";
  List data;

  Future<String> makeRequest() async {
    var response = await http
        .get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

    setState(() {
      var extractdata = jsonDecode(response.body);
      data = extractdata["results"];
    });
  }

  @override
  void initState() {
    this.makeRequest();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Photo Gallery'),
        backgroundColor: Color(0xFFf5851f),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width/1,
            height: MediaQuery.of(context).size.height/1,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              padding: EdgeInsets.zero,
              itemCount: data == null ? 0 : data.length,
              itemBuilder: (BuildContext context, i) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        new MaterialPageRoute(
                            builder: (BuildContext context) =>
                            new SecondPage(data[i])));
                  },
                  child: Card(
                    child: Image.network("http://192.168.0.200/Shaifali/MyProject/images/" +data[i]["image"],fit:BoxFit.fill),

                    /* child: Title(
                   color: Colors.grey[300],
                   child:Center(
                     child: ListTile(
                       onTap: () {
                         Navigator.push(
                             context,
                             new MaterialPageRoute(
                                 builder: (BuildContext context) =>
                                 new SecondPage(data[i])));
                       },
                       contentPadding: EdgeInsets.all(0),
                       title: Image.network("http://192.168.0.200/Shaifali/MyProject/images/" +data[i]["image"],fit:BoxFit.fill),
                     ),
                   ) ),*/
                  ),
                );
                /*return Container(
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new SecondPage(data[i])));
                },
                contentPadding: EdgeInsets.all(0),
                title: Image.network("http://192.168.0.200/Shaifali/MyProject/images/" +data[i]["image"],),
              ),
              margin: EdgeInsets.all(2.0),
              color: Colors.grey[300],
            );*/
              },
            ),
          ),
        ],
      ),
      endDrawer: MyDrawer(),
    );
  }
}

class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;

  @override
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(title: new Text('Second Page'),backgroundColor: Color(0xFFf5851f),),
      body: new Center(
        child: Container(
          child: Image.network("http://192.168.0.200/Shaifali/MyProject/images/"+data["image"]),
        )
       /* child: Column(
          children: <Widget>[
            Image.network("http://192.168.0.200/Shaifali/MyProject/images/"+data["image"]),
            SizedBox(height: 10.0,),
            Container(
              child: ListTile(
                //subtitle: new Text(data["description"], textAlign: TextAlign.justify, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600 ),),
              ),
            )
          ],
        )*/
      ),
    endDrawer: MyDrawer(),
  );
}

