import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginMobileScreen extends StatefulWidget {
  @override
  _LoginMobileScreenState createState() => _LoginMobileScreenState();
}

class _LoginMobileScreenState extends State<LoginMobileScreen> {
  String mode = "SignIn";

  double cardHeight = 330.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("background-img.jpg"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  'Willux.PNG',
                  height: 150,
                  width: 150,
                ),
                Container(
                  width: 300.5,
                  height: cardHeight,
                  padding: EdgeInsets.all(2.5),
                  child: Card(
                    elevation: 5,
                    // margin: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    margin: EdgeInsets.all(2.50),
                    child: Column(
                      children: [
                        Form(
                            child: Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, bottom: 8.5, left: 8.5, right: 8.5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              TextFormField(
                                cursorColor: Colors.black,
                                keyboardType: TextInputType.emailAddress,
                                decoration: new InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon: Icon(Icons.email),
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 11,
                                        top: 11,
                                        right: 15),
                                    hintText: "Enter your email address"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Email Address';
                                  }
                                  return null;
                                },
                              ),
                              Padding(padding: EdgeInsets.all(10.0)),
                              TextFormField(
                                keyboardType: TextInputType.text,
                                obscureText: true,
                                decoration: new InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(50)),
                                    prefixIcon: Icon(Icons.lock_outline),
                                    contentPadding: EdgeInsets.only(
                                        left: 15,
                                        bottom: 11,
                                        top: 11,
                                        right: 15),
                                    hintText: "Enter your password"),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter Password';
                                  }
                                  return null;
                                },
                              ),
                              mode == "SignIn"
                                  ? Column(
                                      children: [
                                        TextButton(
                                            onPressed: () => {},
                                            child: Text('Forgot password?')),
                                        Padding(padding: EdgeInsets.all(10.0)),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                textStyle: MaterialStateProperty.all<TextStyle>(
                                                    TextStyle(
                                                        fontSize: 20,
                                                        letterSpacing: 2.0,
                                                        height: 2)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                25.0),
                                                        side: BorderSide(
                                                            color: Theme.of(context)
                                                                .primaryColor)))),
                                            child: Text('Submit'),
                                            onPressed: () => {debugPrint('Submit button clicked')}),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0,
                                                horizontal: 4.0)),
                                        TextButton(
                                          onPressed: _switchToSignUp,
                                          child: Text('Sign Up'),
                                          clipBehavior: Clip.hardEdge,
                                        ),
                                      ],
                                    )
                                  : Column(
                                      children: [
                                        Padding(padding: EdgeInsets.all(10.0)),
                                        TextFormField(
                                          keyboardType: TextInputType.text,
                                          obscureText: true,
                                          decoration: new InputDecoration(
                                              border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          50)),
                                              prefixIcon:
                                                  Icon(Icons.lock_outline),
                                              contentPadding: EdgeInsets.only(
                                                  left: 15,
                                                  bottom: 11,
                                                  top: 11,
                                                  right: 15),
                                              hintText:
                                                  "Confirm your password"),
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'Please confirm your Password';
                                            }
                                            return null;
                                          },
                                        ),
                                        Padding(padding: EdgeInsets.all(10.0)),
                                        ElevatedButton(
                                            style: ButtonStyle(
                                                // padding:
                                                //     MaterialStateProperty.all(
                                                //         EdgeInsets.only(
                                                //             top: 4.0,
                                                //             bottom: 10,
                                                //             left: 4.0,
                                                //             right: 4.0)),
                                                textStyle:
                                                    MaterialStateProperty.all<TextStyle>(
                                                        TextStyle(
                                                            fontSize: 20,
                                                            letterSpacing: 2.0,
                                                            height: 2)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius.circular(
                                                                25.0),
                                                        side: BorderSide(
                                                            color: Theme.of(context)
                                                                .primaryColor)))),
                                            child: Text('Submit'),
                                            onPressed: () =>
                                                {debugPrint('Submit button clicked')}),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4.0,
                                                horizontal: 4.0)),
                                        TextButton(
                                          onPressed: _switchToSignIn,
                                          child: Text('Sign In'),
                                          clipBehavior: Clip.hardEdge,
                                        ),
                                      ],
                                    )
                            ],
                          ),
                        )),
                        Padding(padding: EdgeInsets.only(top: 10.50)),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(
                              onPressed: () => {},
                              child: Image.asset(
                                'google2.png',
                                height: 40,
                                width: 40,
                              ),
                            ),
                            TextButton(
                              onPressed: () => {},
                              child: Image.asset(
                                'facebook.png',
                                height: 30,
                                width: 30,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }

  _switchToSignUp() {
    setState(() {
      debugPrint('Switching to signup');
      mode = 'SignUp';
      cardHeight = 370.5;
    });
  }

  _switchToSignIn() {
    setState(() {
      debugPrint('Switching to sign in');
      mode = 'SignIn';
      cardHeight = 330.5;
    });
  }
}
