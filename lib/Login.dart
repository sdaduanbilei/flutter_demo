import 'package:flutter/material.dart';

/// 登录页面
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: <Widget>[
          titleSection,
          inputSection(),
          buttonSection(),
          snsLoginSection(),
        ],
      ),
    );
  }

//  标题栏
  Widget titleSection = Container(
    child: Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('账号密码登录',
                  style: TextStyle(fontSize: 16, color: Colors.red)),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(start: 8.0, end: 8.0),
              child: SizedBox(
                child: Center(
                  child: Container(
                    margin: EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
                    height: 15.0,
                    width: 1.0,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                child: Text('动态密码登录1r',
                    style: TextStyle(fontSize: 16, color: Colors.blue)),
                onTap: () {
                  print("onclick");
                },
              ),
            )
          ],
        ),
      ),
    ),
  );

  // 输入框部分
  Widget inputSection() {
    final controller = TextEditingController();
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Text(
                    '账号',
                    style: TextStyle(fontSize: 16.0, color: Colors.black),
                  ),
                  Flexible(
                      child: TextField(
                    controller: controller,
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Row(
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Text(
                    '密码',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Flexible(
                      child: TextField(
                    controller: controller,
                  ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // login btn
  Widget buttonSection() {
    return Container(
      width: 350.0,
      height: 40.0,
      child: RaisedButton(
        elevation: 4.0,
        onPressed: () {},
        color: Colors.red[300],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Text(
          "登录",
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }

  // 第三方账号登录
  Widget snsLoginSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://img2.ch999img.com/m/static/assets/qq.7df9dcd2828ad5eaeee0e76ce8f7d917.png',
            width: 30,
            height: 30,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.network(
            'https://img2.ch999img.com/m/static/assets/qq.7df9dcd2828ad5eaeee0e76ce8f7d917.png',
            width: 30,
            height: 30,
          ),
        ),
      ],
    );
  }
}
