import 'package:clubmark3/screens/accountCreation/login_screen.dart';
import 'package:clubmark3/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'userPreferences/user_details_preference.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _confirmPass = TextEditingController();
  final TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomLeft,
                colors: [Color(0xFF1F1F1F), Color(0xFF1F1F1F)],
              ),
              image: DecorationImage(
                image: AssetImage("lib/assets/images/register.png"),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/topbig.png'),
                alignment: Alignment.topLeft,
                scale: 0.9,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/bottomleft.png'),
                alignment: Alignment.bottomLeft,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/toptop.png'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/top.png'),
                alignment: Alignment.topCenter,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 165, right: 15),
            child: ListView(
              children: [
                Center(
                  child: Text(
                    'SIGN UP',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    child: Center(
                      child: Text(
                        'Please fill the form below',
                        style: ktsMediumGreyBodyText,
                      ),
                    ),
                  ),
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 15,
                      ),
                      //full name mate
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.5)),
                                borderRadius: BorderRadius.circular(20)),
                            hintText: 'Enter Your Name',
                            hintStyle: TextStyle(color: kcMediumGreyColor),
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'E-mail',
                            hintStyle: TextStyle(color: kcMediumGreyColor),
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            if (!RegExp(
                                    "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                .hasMatch(value)) {
                              return 'Please enter a valid Email';
                            }
                            return null;
                          },
                          controller: _email,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: kcMediumGreyColor),
                            labelStyle: TextStyle(
                              color: Colors.white,
                            ),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            return null;
                          },
                          controller: _pass,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        padding: EdgeInsets.all(8.0),
                        child: TextFormField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.grey.withOpacity(0.5)),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            hintText: 'Verify Password',
                            hintStyle: TextStyle(color: kcMediumGreyColor),
                            labelStyle: TextStyle(color: Colors.white),
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your password';
                            }
                            if (value != _pass.text)
                              return 'Passwords Do Not Match';
                            return null;
                          },
                          controller: _confirmPass,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                  child: TextButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // you'd often call a server or save the information in a database.
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserDetailsPreference(),
                          ),
                        );
                      }
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: kcPrimaryColor, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "━━━━━  OR SIGN UP WITH  ━━━━━",
                        style:
                            TextStyle(color: kcMediumGreyColor, fontSize: 12),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset('lib/assets/images/googleIcon.png',
                              width: 50.0, height: 50.0),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(),
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                              'lib/assets/images/facebookIcon.png',
                              width: 45.0,
                              height: 45.0),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Already have an account?",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    TextButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(color: kcPrimaryColor, fontSize: 16),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()));
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
