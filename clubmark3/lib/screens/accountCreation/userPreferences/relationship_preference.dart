import 'package:clubmark3/styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'music_preference.dart';
import 'user_details_preference.dart';

class RelationshipPreferences extends StatefulWidget {
  const RelationshipPreferences({Key? key}) : super(key: key);

  @override
  _RelationshipPreferencesState createState() =>
      _RelationshipPreferencesState();
}

class _RelationshipPreferencesState extends State<RelationshipPreferences> {
  bool single = false;
  bool relationship = false;
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // mainAxisSize: MainAxisSize.max,
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
                        child: Image.asset('lib/assets/images/purplewatch.png',
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
                        child: Image.asset('lib/assets/images/numba3.png',
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
                        child: Image.asset('lib/assets/images/numba4.png',
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
              right: 60,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Choose Your Relationship Status',
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
              top: 240,
              right: 40,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      'You can change this afterwards if you get lucky',
                      style: ktsMediumGreyBodyText,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270,
              right: 180,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      '...or unlucky!',
                      style: ktsMediumGreyBodyText,
                    ),
                  ),
                ),
              ),
            ),
// images of singles, married etc. go here
            Positioned(
              top: 350,
              child: Row(
                children: [
                  SizedBox(
                    height: 180,
                    width: width / 2,
                    child: InkWell(
                      onTap: () {
                        single = true;
                        relationship = false;
                        setState(() {
                          relationship = false;
                          single = true;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          shape: BoxShape.circle,
                          border: Border.all(
                              color:
                                  single ? kcPrimaryColor : Colors.transparent),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'lib/assets/images/single.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                    width: width / 2,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          relationship = true;
                          single = false;
                        });
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey[850],
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: relationship
                                  ? kcPrimaryColor
                                  : Colors.transparent),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            'lib/assets/images/couple.png',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
//images stop here
            Positioned(
              top: 550,
              left: 60,
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: width / 2.3,
                    child: Text(
                      "Single",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  SizedBox(
                    child: Text(
                      "In a Relationship",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                ],
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
                              builder: (context) => UserDetailsPreference()),
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
                            MaterialStateProperty.all<Color>(kcPrimaryColor),
                      ),
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
                              builder: (context) => MusicPreferences()),
                        );
                      },
                      child: Text("Next"),
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
