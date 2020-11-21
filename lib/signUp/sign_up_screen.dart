import 'package:flutter/material.dart';
import 'package:flutter_singleton_pattern_demo/common/app_router.dart';
import 'package:flutter_singleton_pattern_demo/signUp/sign_up_model.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(children: <Widget>[
          Image.asset('assets/icon_sign_up.png'),
          Column(children: [
            Expanded(child: SizedBox(), flex: 25),
            Expanded(
                child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: _buildTextFieldColumn(_emailController)),
                flex: 35),
            Expanded(
                child: GestureDetector(
                    child: Container(color: Colors.transparent),
                    onTap: () {
                      var email = _emailController.text.toString();
                      SignUpModel().setEmail(email);
                      Navigator.pushNamed(context, AppRouter.mine);
                    }),
                flex: 13),
            Expanded(child: SizedBox(), flex: 47)
          ])
        ]));
  }

  Column _buildTextFieldColumn(TextEditingController _emailController) {
    return Column(children: <Widget>[
      Expanded(child: SizedBox()),
      TextField(
          obscureText: false,
          controller: _emailController,
          decoration: InputDecoration(
              labelText: '電子郵件地址',
              labelStyle: TextStyle(color: Color(0xFF42C0A0), fontSize: 18),
              hintText: "電子郵件地址",
              hintStyle: TextStyle(color: Color(0x606D6D6D), fontSize: 18),
              fillColor: Colors.transparent,
              filled: true)),
      Expanded(child: SizedBox()),
      TextField(
          obscureText: false,
          decoration: InputDecoration(
              labelText: '密碼',
              labelStyle: TextStyle(color: Color(0xFF42C0A0), fontSize: 18),
              hintText: "密碼",
              hintStyle: TextStyle(color: Color(0x606D6D6D), fontSize: 18),
              fillColor: Colors.transparent,
              filled: true)),
      Expanded(child: SizedBox())
    ]);
  }
}
