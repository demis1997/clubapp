import 'package:clubmark3/styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../screens.dart';
import 'music_preference.dart';

class ProfilePicPreference extends StatelessWidget {
  const ProfilePicPreference({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        width: width,
        height: height,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomLeft,
                  colors: [Color(0xFF1F1F1F), Color(0xFF1F1F1F)],
                ),
                image: DecorationImage(
                  image: AssetImage("lib/assets/images/topbig.png"),
                  alignment: Alignment.topCenter,
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
            Positioned(
              top: 70.0,
              left: 30.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('lib/assets/images/bluetick.png',
                            width: 40.0, height: 40.0),
                      ),
                    ),
                  ),
                  Text(
                    "━━━━━",
                    style: TextStyle(color: kcPrimaryColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('lib/assets/images/bluetick.png',
                            width: 40.0, height: 40.0),
                      ),
                    ),
                  ),
                  Text(
                    "━━━━━",
                    style: TextStyle(color: kcMediumGreyColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('lib/assets/images/bluetick.png',
                            width: 40.0, height: 40.0),
                      ),
                    ),
                  ),
                  Text(
                    "━━━━━",
                    style: TextStyle(color: kcMediumGreyColor),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(),
                      child: ClipRRect(
                        // borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset('lib/assets/images/purplewatch.png',
                            width: 40.0, height: 40.0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 130.0,
              left: 25.0,
              child: Row(
                children: [
                  Text(
                    "Profile",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Relationship",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Music",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Profile Pic",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat',
                    ),
                  )
                ],
              ),
            ),
            Positioned(
              top: 200,
              right: 100,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Upload your Profile Pic',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 35,
              child: SizedBox(
                width: width / 1.2,
                height: height / 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    color: Colors.grey[850],
                    child: Column(
                      children: [
                        SizedBox(
                          height: 90,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 290,
                          height: 50,
                          child: TextButton(
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kcPrimaryColor),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white)),
                            onPressed: () {},
                            child: Text("Upload Picture"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 290,
                          height: 50,
                          child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeScreen()),
                              );
                            },
                            child: Text("I will do it later"),
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.transparent),
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        kcPrimaryColor)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 290,
              left: 140,
              child: SizedBox(
                  width: 150,
                  height: 150,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Container(
                      color: Colors.grey[850],
                    ),
                  )),
            ),
            Positioned(
              top: 280,
              left: 165,
              child: SizedBox(
                width: 100,
                height: 150,
                child: CircleAvatar(
                  backgroundImage:
                      AssetImage("lib/assets/images/randomface.jpg"),
                ),
              ),
            ),
            Positioned(
              bottom: 50,
              child: Row(
                children: [
                  SizedBox(
                    height: 60,
                    width: width / 2,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MusicPreferences()),
                        );
                      },
                      child: Text("Back"),
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.transparent),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(kcPrimaryColor)),
                    ),
                  ),
                  SizedBox(
                    height: 60,
                    width: width / 2,
                    child: TextButton(
                      style: ButtonStyle(
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                          ),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kcPrimaryColor),
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: Text("Done"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
