import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text('About IITTM'),backgroundColor: Color(0xFFf5851f),),
      body: new ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width/1,
            height: MediaQuery.of(context).size.height/5,
            margin: EdgeInsets.only(top: 10, left: 10, right: 10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/b/b4/Iittm_rama.jpg" ),
              ),
            ),
          ),
          SizedBox(height: 10.0,),
          Container(
            child: ListTile(
                title: new Text("1. Login Page", style:TextStyle(fontSize: 22.0, color: Colors.green, fontWeight: FontWeight.w500),textAlign: TextAlign.left, ),
                subtitle: new Text("Indian Institute of Tourism and Travel Management (IITTM) is an autonomous body under Ministry of Tourism, Government of India and is one of the premier institutes in the country offering education, training, research and consultancy in sustainable management of tourism, travel and other allied sectors. The stakeholders’ realization that the country is in need of such professionals who can provide an excellent standard of products and services, resulted in the creation of IITTM in 1983 at New Delhi. It is devoted to the pursuit of higher knowledge in tourism and its dissemination to a diverse audience. Over the years, Institute has established a distinguished identity of its own and reached at a commanding position among sectoral B-Schools in the country. With its focus in meeting the changing needs of the tourism industry, it has played a pioneering role in the propagation and professionalisation of tourism education. The management of the Institute is entrusted in the hands of the Board of Governors having the Union Minister for Tourism as its Chairperson. The efforts of the Institute have been instrumental in evolving the fundamental framework for tourism education and training in the country as it exists today. The Ministry of Tourism, Government of India has also entrusted the institute to conduct regional level guide training programmes for all the regions of the country.Having set the benchmark in Tourism sector, we have begun the journey to define excellence in field of ever expanding Service sector. IITTM, with its vast resource pool and enormous experience will set trends and create new paths which will set the pattern to be followed in future.", textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0, color:Colors.black, fontWeight: FontWeight.w300))),
          ),
          ListTile(
            leading: new MyBullet(),
            title: new Text('Gwalior started in 1992'),
          ),
          ListTile(
            leading: new MyBullet(),
            title: new Text('Bhubaneswar started in 1996'),
          ),
          ListTile(
              leading: new MyBullet(),
              title: new Text('Goa started in 2004')
          ),
          ListTile(
            leading: new MyBullet(),
            title: new Text('NOIDA started in 2007'),
          ),
          ListTile(
            leading: new MyBullet(),
            title: new Text('Nellore started in 2008'),
          ),
          ListTile(
            leading: new MyBullet(),
            title: new Text('Shillong started in 2018 and Bodh Gaya in 2018'),
          ),
          /* Divider(),
              SizedBox(height: 15,),
              Container(
                child: ListTile(
                  title: new Text("How, we are different?", style:TextStyle(fontSize: 22.0, color: Colors.green, fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                  subtitle: new Text("Experienced faculty, flexible and dynamic curriculum, exciting research and industry connections are the features that set IITTM, NOIDA apart. MBA (Tourism and Travel Management) and BBA (Tourism and Travel) programme is designed to address the current and future needs of employers, and to enhance learner’s lifelong career prospects. In addition, the institute’s highly experienced programme staff is keen to make the time you spend with them, as academically stimulating and rewarding as possible.", textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0, color:Colors.black, fontWeight: FontWeight.w300, fontStyle: FontStyle.italic)),
                ),
              ),*/
          Divider(),
          SizedBox(height: 15,),
          Container(
            child: ListTile(
              title: new Text("Our Mission", style:TextStyle(fontSize: 22.0, color: Colors.green, fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
              subtitle: new Text("IITTM is committed to developing quality human resources for tourism and allied services. The target groups of its educational/ training programmes extend much beyond the organized sectors of the economy. IITTM endeavours to nurture professional and managerial excellence, social and cultural sensitivity, moral and ethical responsibility with concern for the environment and strive for latest techniques to develop decision making abilities with a resolute approach towards productivity, excellence, innovation and value for others to enable its participants to keep pace with the changing scenario of the economy and its environs.", textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0, color:Colors.black, fontWeight: FontWeight.w300)),
            ),
          ),
          Divider(),
          SizedBox(height: 15,),
          Container(
              child: ListTile(
                title: new Text("Our Vision", style:TextStyle(fontSize: 22.0, color: Colors.green, fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                subtitle: new Text("To strive hard for becoming a lead Center for Excellence in Tourism Education & Research nationally and internationally.", textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0, color:Colors.black, fontWeight: FontWeight.w300)),
              )
          ),
          Divider(),
          SizedBox(height: 15,),
          Container(
              child: ListTile(
                title: new Text("The Culture", style:TextStyle(fontSize: 22.0, color: Colors.green, fontWeight: FontWeight.w500),textAlign: TextAlign.left,),
                subtitle: new Text("The faculty, staff, students and the administration of the Institute contribute to the building up an organizational culture marked by team spirit, confidence, mutual respect and concern for others. The students of the regular courses and the participants of various training programmes enrich the culture of the Institute with their diverse background and experience. IITTM welcomes people working at different levels to attend MDPs and various tailor-made training programmes in IITTM centres at Gwalior, Bhubaneswar, New Delhi, Goa and Nellore as well as in other parts of the country.", textAlign: TextAlign.justify,style:TextStyle(fontSize: 15.0, color:Colors.black, fontWeight: FontWeight.w300)),
              )
          ),
        ],
      ),
    );
  }
}
class MyBullet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 10.0,
      width: 40.0,
      decoration: new BoxDecoration(
        color: Colors.black,
        shape: BoxShape.circle,
      ),
    );
  }
}
