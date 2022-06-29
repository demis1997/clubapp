import 'package:clubmark3/screens/accountCreation/userPreferences/relationship_preference.dart';
import 'package:clubmark3/styles/style.dart';
import 'package:flutter/material.dart';

class UserDetailsPreference extends StatefulWidget {
  const UserDetailsPreference({Key? key}) : super(key: key);

  @override
  _UserDetailsPreferenceState createState() => _UserDetailsPreferenceState();
}

class _UserDetailsPreferenceState extends State<UserDetailsPreference> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var dropdownValue;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SizedBox(
        height: height,
        width: width,
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
                        child: Image.asset('lib/assets/images/purplewatch.png',
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
                        child: Image.asset('lib/assets/images/numba2.png',
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
                  ),
                ],
              ),
            ),
            Positioned(
              top: 185,
              right: 120,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Setup Your Profile',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 165, right: 15),
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Country *',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey.withOpacity(0.5)),
                            borderRadius: BorderRadius.circular(20)),
                        hintText: 'Location',
                        hintStyle: TextStyle(color: kcMediumGreyColor),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.pin_drop,
                          color: Colors.white,
                        ),
                      ),
                      // add controller
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Gender *',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue,

                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>['Male', 'Female', 'Other']
                          .map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      style: TextStyle(color: Colors.white),
                      dropdownColor: kcMediumGreyColor,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Gender',
                        hintStyle: TextStyle(color: kcMediumGreyColor),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.person,
                          color: Colors.white,
                        ),
                      ),
                      //add controller
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Phone Number *',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(color: kcMediumGreyColor),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                      ),
                      //add controller
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Sexual Orientation',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      value: dropdownValue,

                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue!;
                        });
                      },
                      items: <String>[
                        'Straight',
                        'Gay/Lesbian',
                        'Bisexual',
                        'Other',
                        'Prefer not to Say'
                      ].map<DropdownMenuItem<String>>(
                        (String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        },
                      ).toList(),
                      style: TextStyle(color: Colors.white),
                      dropdownColor: kcMediumGreyColor,
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: 'Sexual Orientation',
                        hintStyle: TextStyle(color: kcMediumGreyColor),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.female,
                          color: Colors.white,
                        ),
                      ),
                      //add controller
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Date of Birth *',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8.0),
                    child: TextFormField(
                      style: TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.grey.withOpacity(0.5)),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        hintText: '24-12-2000',
                        hintStyle: TextStyle(color: kcMediumGreyColor),
                        labelStyle: TextStyle(color: Colors.white),
                        prefixIcon: const Icon(
                          Icons.calendar_view_month,
                          color: Colors.white,
                        ),
                      ),
                      //add controller
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 50,
              left: 200,
              child: Row(
                children: [
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
                              builder: (context) => RelationshipPreferences()),
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
