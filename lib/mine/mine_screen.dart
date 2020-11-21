import 'package:flutter/material.dart';
import 'package:flutter_singleton_pattern_demo/signUp/sign_up_model.dart';

class MineScreen extends StatefulWidget {
  @override
  _MineScreenState createState() => _MineScreenState();
}

class _MineScreenState extends State<MineScreen> {
  @override
  Widget build(BuildContext context) {
    var email = SignUpModel().getEmail;
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset('assets/icon_mine.png'),
      Column(children: [
        Expanded(child: SizedBox(), flex: 82),
        _buildEmailExpanded(email),
        Expanded(child: SizedBox(), flex: 1063)
      ])
    ]));
  }

  Expanded _buildEmailExpanded(String email) => Expanded(
      child: Container(
          margin: const EdgeInsets.only(left: 65),
          alignment: Alignment.centerLeft,
          child:
              Text(email, style: TextStyle(color: Colors.white, fontSize: 17))),
      flex: 65);
}
