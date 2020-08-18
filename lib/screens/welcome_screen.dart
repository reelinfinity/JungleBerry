import 'package:flutter/material.dart';
import 'package:jungleberry/components/rounded_button.dart';
import 'package:jungleberry/screens/login_screen.dart';
import 'package:jungleberry/screens/registration_screen.dart';

class WelcomeScreen extends StatefulWidget {

  static const String id = 'welcome_screen';

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
            Row(
              children: <Widget>[
                Container(
                  child: Image.asset('images/logo.png'),
                  height: 60.0,
                ),
                Text(
                  'Jungle Berry',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    fontFamily: 'Pacifico',
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 48.0,
            ),
            RoundedButton(colour: Colors.lightBlueAccent, title: 'Login', onPressed: (){
              Navigator.pushNamed(context, LoginScreen.id);
            }, ),
            RoundedButton(colour: Colors.blueAccent, title: 'Register', onPressed: (){
              Navigator.pushNamed(context, RegistrationScreen.id);
            },)
          ],
        ),
      ),
    );
  }
}