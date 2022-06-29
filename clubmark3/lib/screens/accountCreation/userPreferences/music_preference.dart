import 'package:clubmark3/screens/accountCreation/userPreferences/profile_pic_preference.dart';
import 'package:clubmark3/screens/accountCreation/userPreferences/relationship_preference.dart';
import 'package:clubmark3/styles/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MusicPreferences extends StatefulWidget {
  const MusicPreferences({Key? key}) : super(key: key);

  @override
  _MusicPreferencesState createState() => _MusicPreferencesState();
}

class _MusicPreferencesState extends State<MusicPreferences> {
  bool rock = false;
  bool jazz = false;
  bool pop = false;
  bool reggae = false;
  bool rnb = false;
  bool hiphop = false;
  bool livemusic = false;
  bool native = false;

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
                )),
            Positioned(
              top: 200,
              right: 30,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Choose Your Experience Preferences',
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
              right: 60,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      'We will prioritise Events of these types',
                      style: ktsMediumGreyBodyText,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 270,
              right: 170,
              child: Align(
                alignment: Alignment.center,
                child: SizedBox(
                  child: Center(
                    child: Text(
                      'Maximum 5',
                      style: TextStyle(
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            ///image avatars

            Positioned(
              top: 300,
              child: Center(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: width,
                        height: height / 1.8,
                        child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: [
                            InkWell(
                              onTap: () {
                                setState(() {
                                  reggae = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: reggae
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/reggae.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rock = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: rock
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/rock.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  jazz = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: jazz
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/jazz.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  pop = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: pop
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/pop.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  livemusic = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: livemusic
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/livemusic.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  hiphop = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: hiphop
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/hiphop.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  rnb = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: rnb
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/rnb.jpg"),
                                    radius: 10),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                setState(() {
                                  native = true;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey[850],
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: native
                                          ? kcPrimaryColor
                                          : Colors.transparent),
                                ),
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        "lib/assets/images/music_types/native.jpg"),
                                    radius: 10),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            //Image Avatars
            Positioned(
              bottom: 50,
              child: Row(
                children: [
                  SizedBox(
                    width: width / 2,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RelationshipPreferences()),
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
                              builder: (context) => ProfilePicPreference()),
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
