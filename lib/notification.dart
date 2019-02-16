import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:iittm_app/home.dart';
import 'package:flutter_downloader/flutter_downloader.dart';


class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => new _NotificationsState();
}

class _NotificationsState extends State<Notifications> {

  String url = "http://192.168.0.200/Shaifali/MyProject/JSON_Notification.php";
  List data;

 downloadFile() async{
    print("Hello");
    final taskId = await FlutterDownloader.enqueue(
      url: "http://192.168.0.200/Shaifali/MyProject/fileupload/",
      savedDir: 'http://192.168.0.200/Shaifali/MyProject/fileupload',
      showNotification: true, // show download progress in status bar (for Android)
      openFileFromNotification: true, // click on notification to open downloaded file (for Android)
    );
  }

  Future<String> makeRequest() async {
    var response = await http.get(Uri.encodeFull(url), headers: {"Accept": "application/json"});

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
          title: new Text('Notifications'),
          backgroundColor: Color(0xFFf5851f),
          elevation: 2.0,
        ),
       body: ListView.builder(
        itemCount: data == null ? 0 : data.length,
        itemBuilder: (BuildContext context, i) {
        return new Container(
          margin: EdgeInsets.only( left: 10, right: 10, top:10.0),
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
              Container(
                child: ListTile(
                  title: Text(data[i]["date"], style: TextStyle(color: Colors.blue, fontSize: 15,fontWeight: FontWeight.w400,fontStyle: FontStyle.italic ),textAlign: TextAlign.right,),
                ),
              ),
                  Container(
                    child: ListTile(
                      title: new Text(data[i]["title"], style: TextStyle(color: Colors.blue, fontSize: 18,fontWeight: FontWeight.w600),),
                      subtitle: new Text(data[i]["description"],style: TextStyle(fontSize: 16,fontStyle: FontStyle.normal )),
                    ),
                  ),
                  Divider(),
                  Container(
                    child: ListTile(
                      title: new Text(data[i]["title"] + " dated " +  data[i]["date"] + ".pdf ", style: TextStyle(color: Colors.red, fontSize: 15,fontWeight: FontWeight.w600),),
                      subtitle: new Text(data[i]["description"],overflow: TextOverflow.ellipsis, style: TextStyle(fontStyle: FontStyle.italic )),
                      leading: Icon(Icons.picture_as_pdf, color: Colors.red,size: 40,),
                      trailing: Icon(Icons.file_download, color: Colors.blue,size: 40,),
                     onTap: () {
                      },
                    ),
                  )
                ],
            ),
          );
        }
       ),
        endDrawer: MyDrawer(),
    );
  }
}
/*class SecondPage extends StatelessWidget {
  SecondPage(this.data);
  final data;

  @override
  Widget build(BuildContext context) => new Scaffold(
      appBar: new AppBar(title: new Text(data["title"]),backgroundColor: Color(0xFFf5851f),),
      body: new Column(
        children: <Widget>[
          //SizedBox(height: 10.0,),
          Flexible(
          child: Container(
            //width: MediaQuery.of(context).size.width/1,
            //height: MediaQuery.of(context).size.height/1,
            padding: EdgeInsets.only(top: 10.0),
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
            child: Column(
              children: <Widget>[
                /*Container(
                 child: ListTile(
                    title: new Text(data["title"], style: TextStyle(color: Colors.red, fontSize: 20, fontWeight: FontWeight.w600)),
                    leading: Icon(Icons.picture_as_pdf, color: Colors.red,size: 40,),
                    trailing: Icon(Icons.file_download, color: Colors.red,size: 40,),
                  ),
                ),
                Divider(),*/
                Container(
                  child: ListTile(
                    subtitle: new Text(data["description"], textAlign: TextAlign.justify, style: TextStyle( fontSize: 16, fontWeight: FontWeight.w600)),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 15.0),
                  child: Center(
                    child: Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsTy-F6M-e_b1v086UJgmBdLp0h9rvOoNdWoBFjBZR5zTTQREM"), ),
                  ),
                )
              ],
            ),
          ),
          ),
        ],
      ),
    endDrawer: MyDrawer(),
  );
}*/
