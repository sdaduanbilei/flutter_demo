import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



/**
 * 登录页面
 */
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final TextEditingController _controllerName = new TextEditingController();
  final TextEditingController _controllerPwd = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: EdgeInsets.all(16.0),
      child: new ListView(
        children: <Widget>[
          imageSection,
          titleSection(),
          buttonSection(),
          textSection,
        ],
      )
    );
  }

  // title
  Widget titleSection(){
    return new Row(
      children: <Widget>[
        new Expanded(child: new Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            new Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: new Text('Oeschinen Lake Campground',
                style: new TextStyle(fontWeight: FontWeight.bold),),
            ),

            new Text(
              'Kandersteg,Switerland',
              style: new TextStyle(
                  color: Colors.grey[500]
              ),
            ),
          ],
        )),

        new Icon(
          Icons.star,
          color: Colors.red[500],
        ),

        new Text('41')
      ],
    );
  }

  Widget buildButtonItem(IconData icon,String label){
    return new Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Icon(icon,color:Colors.red),
        new Container(
          margin: const EdgeInsets.only(top: 8.0),
          child: new Text(
            label,
            style: new TextStyle(fontSize: 12.0,
              fontWeight: FontWeight.w400,
            ),
          ),
        )
      ],
    );
  }

  Widget buttonSection(){
    return new Container(

      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          buildButtonItem(Icons.call, "CALL"),
          buildButtonItem(Icons.near_me, "ROUTE"),
          buildButtonItem(Icons.share, "SHARE"),

        ],
      ),
    );
  }


  Widget textSection = new Container(
    padding: const EdgeInsets.all(32.0),
    child: new Text(
      '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''',
      softWrap: true,
    ),
  );

  Widget imageSection = new ListView(
    children: <Widget>[
      new Image.asset("images/laka.jpeg",height: 240.0,fit: BoxFit.cover,)
    ],
  );
}
