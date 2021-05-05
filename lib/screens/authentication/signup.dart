import 'package:flutter/material.dart';
import 'package:game_streamming/utils/constants.dart';
import 'package:game_streamming/shared/rounded_button.dart';
import 'package:game_streamming/shared/custom_field.dart';
import 'package:game_streamming/screens/authentication/login.dart';
import 'package:game_streamming/screens/master.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  "Sign UP",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomField(
                            label: "Username", iconData: Icons.person_outline),
                        CustomField(
                            label: "Date of birth", iconData: Icons.cake),
                        CustomField(
                            label: "Email", iconData: Icons.mail_outline),
                        CustomField(
                            label: "Password", iconData: Icons.remove_red_eye),
                      ],
                    )),
              ),
              RoundedButton(
                  text: "I have an account",
                  color: Colors.transparent,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Login()));
                  }),
              SizedBox(
                height: 16,
              ),
              RoundedButton(
                  text: "Sign UP",
                  color: kPrimaryColor,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Master()));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
