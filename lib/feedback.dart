import 'package:flutter/material.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('Feedback'),
        backgroundColor: Color(0xFFf5851f),
      ),
      body: Column(
        children: <Widget>[
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
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //icon: Icon(Icons.lock),
                  labelText: 'Username'
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
              decoration: InputDecoration(
                  border: InputBorder.none,
                  //icon: Icon(Icons.lock),
                  labelText: 'Email Id'
              ),
            ),
          ),

          Container(
            height: MediaQuery.of(context).size.height/3,
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
              keyboardType: TextInputType.multiline,
              maxLines: null,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Add Feedback'
              ),
            ),
          ),

          Container(
            height: 40,
            width: 160,
            margin: EdgeInsets.only(top: 25),
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
                    'Submit',
                    style:TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                        color: Colors.white
                    )),
                elevation: 0.0,
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
