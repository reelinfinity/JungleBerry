import 'package:flutter/material.dart';
import 'package:jungleberry/contants.dart';
import 'package:jungleberry/components/drop_down_button.dart';

class RegistrationScreen extends StatefulWidget {

  static const String id = 'registration_screen';

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Jungle Berry',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 20.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Name',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Mobile Number',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Email',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'Address',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              MyDropDownButton(),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'District',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'District',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'District',
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              TextField(
                onChanged: (value) {

                },
                decoration: kTextFieldDecoration.copyWith(
                  hintText: 'District',
                ),
              ),
             SizedBox(
                height: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Material(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  elevation: 5.0,
                  child: MaterialButton(
                    onPressed: () {
                      //Implement registration functionality.
                    },
                    minWidth: 100.0,
                    height: 42.0,
                    child: Text(
                      'Register',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class MyDropDownButton extends StatefulWidget {
  @override
  _MyDropDownButtonState createState() => _MyDropDownButtonState();
}

class _MyDropDownButtonState extends State<MyDropDownButton> {

  String dropDownValue = 'State';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: dropDownValue,
      onChanged: (String newValue) {
        setState(() {
          dropDownValue = newValue;
        });
      },
      items: ['Bihar']
          .map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem(
          value: value,
          child: Text(value),
        );
      }).toList(),
      decoration: kTextFieldDecoration,
    );
  }
}
