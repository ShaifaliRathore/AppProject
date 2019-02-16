import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iittm_app/home.dart';

class News extends StatefulWidget {
  @override
  _NewsState createState() => new _NewsState();
}

class _NewsState extends State<News> {
  String url = "http://192.168.0.200/Shaifali/MyProject/JSON_News.php";
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
          title: new Text('News'),
          backgroundColor: Color(0xFFf5851f),
        ),
      body: ListView.builder(
          itemCount: data == null ? 0 : data.length,
          itemBuilder: (BuildContext context, i) {
            return new Container(
              margin: EdgeInsets.only( left: 10, right: 10, top:10),
              padding: EdgeInsets.only(top: 10.0),
              decoration: BoxDecoration(
                /* borderRadius: BorderRadius.all(
                  Radius.circular(10)
              ),*/
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 5,
                    )
                  ]
              ),
              child: Column(
                children: <Widget>[
                 /* Container(
                    child: ListTile(
                      title: Text(data[i]["date"], style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic ),textAlign: TextAlign.right,),
                    ),
                  ),*/
                  Container(
                    child: ListTile(
                      title: new Text(data[i]["headline"], style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.w600),),
                      subtitle: new Text(data[i]["description"],overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 16,fontStyle: FontStyle.italic )),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new SecondPage(data[i])));
                      },
                    ),
                  ),
                  Divider(),
                 Container(
                    child: ListTile(
                      title: Image.network("http://192.168.0.200/Shaifali/MyProject/images/" +data[i]["image"]),
                      onTap: () {
                        Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (BuildContext context) =>
                                new SecondPage(data[i])));
                      },
                    ),
                  )
                ],

              ),
            );

          }
      ),
        /*body: new ListView.builder(
            itemCount: data == null ? 0 : data.length,
            itemBuilder: (BuildContext context, i) {
              return new ListTile(
                title: new Text(data[i]["headline"]),
                subtitle: new Text(data[i]["description"],overflow: TextOverflow.ellipsis),
                leading: Icon(Icons.speaker_notes, color: Colors.red, size:40),
                /*leading: new CircleAvatar(
                  backgroundImage:
                  new NetworkImage(data[i]["picture"]["thumbnail"]),
                ),*/
                onTap: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (BuildContext context) =>
                          new SecondPage(data[i])));
                },
              );
            }
        ),*/
        endDrawer: MyDrawer(),
    );
  }
}
class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;
  @override
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(title: new Text(data['headline']),backgroundColor: Color(0xFFf5851f),),
    body: new Container(
      margin: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
      child: Column(
        children: <Widget>[
          Image.network("http://192.168.0.200/Shaifali/MyProject/images/"+data["image"]),
          SizedBox(height: 15.0,),
          Container(
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 5.0,left: 10.0, right:10.0),
              //title: Image.network("http://192.168.0.200/Shaifali/MyProject/images/" +data["image"]),
              subtitle: new Text(data["description"], textAlign: TextAlign.justify, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600 ),),
            ),
          )
        ],
      ),
    ),
    endDrawer: MyDrawer(),
  );
}
