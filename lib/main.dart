import 'package:flutter/material.dart';
import 'package:jungleberry/screens/farmers_main_page.dart';
import 'screens/welcome_screen.dart';
import 'screens/login_screen.dart';
import 'screens/registration_screen.dart';

void main() => runApp(JungleBerry());

class JungleBerry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        FarmerMainPage.id: (context) => FarmerMainPage(),
      },
    );
  }
}


