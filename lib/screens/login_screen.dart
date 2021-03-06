import 'package:flutter/material.dart';
import 'package:jungleberry/components/rounded_button.dart';
import 'package:jungleberry/contants.dart';
import 'package:jungleberry/contants.dart';
import 'package:jungleberry/screens/farmers_main_page.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class LoginScreen extends StatefulWidget {

  static const String id = 'login_screen';

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200.0,
              child: Image.asset('images/logo.png'),
            ),
            SizedBox(
              height: 48.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
              ),
            ),
            SizedBox(
              height: 8.0,
            ),
            TextField(
              onChanged: (value) {
                //Do something with the user input.
              },
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your password'
              ),
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(colour: Colors.lightBlueAccent, title: 'Login', onPressed: (){
              Navigator.pushNamed(context, FarmerMainPage.id);
            },)
          ],
        ),
      ),
    );
  }
}