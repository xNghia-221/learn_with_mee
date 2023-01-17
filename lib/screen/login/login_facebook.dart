import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';

class LoginByFacebook extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginByFacebookState();
  }
}

class LoginByFacebookState extends State<LoginByFacebook> {
  bool isLogin = false;
  Map userObject = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${userObject.toString()}"),
          TextButton(
              onPressed: () {
                FacebookAuth.instance.login(permissions: [
                  "public_profile",
                  "email"
                ]).then((value) => {
                      FacebookAuth.instance.getUserData().then((usData) async {
                        setState(() async {
                          final anv = await FacebookAuth.instance.accessToken;
                          userObject = usData;
                        });
                      })
                    });
              },
              child: const Text("Login"))
        ],
      ),
    );
  }
}
