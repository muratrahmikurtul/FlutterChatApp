import 'package:flutter/material.dart';
import 'package:flutter_chat_app/common_widget/social_login_button.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Chat App'),
        elevation: 0,
      ),
      backgroundColor: Colors.grey.shade200,
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Sign In",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(
              height: 8,
            ),
            SocialLoginButton(
              buttonText: "Continue with Google",
              buttonTextColor: Colors.black87,
              onPressed: () {},
              buttonColor: Colors.white,
              buttonIcon: Image.asset("images/google-logo.png"),
            ),
            SocialLoginButton(
              buttonText: "Continue with Facebook",
              buttonTextColor: Colors.white,
              onPressed: () {},
              buttonColor: Color(0xFF334D92),
              buttonIcon: Image.asset("images/facebook-logo.png"),
            ),
            SocialLoginButton(
              buttonText: "Continue with Email and Password",
              onPressed: () {},
              buttonIcon: Icon(
                Icons.email,
                size: 32,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
