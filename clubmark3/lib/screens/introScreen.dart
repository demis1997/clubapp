import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:intro_slider/scrollbar_behavior_enum.dart';

import 'accountCreation/register_screen.dart';

class IntroScreen extends StatefulWidget {
  static const String routeName = '/introScreen';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => IntroScreen());
  }

  @override
  IntroScreenState createState() => IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Book Your Night Out",
        maxLineTitle: 2,
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
        description:
            "Welcome to Night Out you club rat! Swipe through the tutorial and book your ticket to the next event now",
        styleDescription: TextStyle(
            color: Color(0xFF8F8F8F),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Montserrat'),
        marginDescription: EdgeInsets.only(top: 50.0),
        marginTitle: EdgeInsets.only(
          top: 400.0,
        ),
        // centerWidget: Text("Replace this with a custom widget",
        //     style: TextStyle(color: Colors.white)),
        backgroundImage: "lib/assets/images/hello1.jpg",
        backgroundColor: Colors.blueAccent,
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
        onCenterItemPress: () {},
      ),
    );
    slides.add(
      new Slide(
        title: "Tailored Experiences ",
        styleTitle: TextStyle(
            color: Colors.white,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'Montserrat'),
        description:
            "Just tell us your preferences and we will show you events and clubs tailored to your needs",
        styleDescription: TextStyle(
            color: Color(0xFF8F8F8F),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Montserrat'),
        backgroundImage: "lib/assets/images/hello2.jpg",
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
        marginDescription: EdgeInsets.only(top: 50.0),
        marginTitle: EdgeInsets.only(
          top: 400.0,
        ),
      ),
    );
    slides.add(
      new Slide(
        title: "Find what's hot!",
        styleTitle: TextStyle(
          color: Colors.white,
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'Montserrat',
        ),
        description:
            "See which events your friends are interested in and book your ticket with one simple click",
        styleDescription: TextStyle(
            color: Color(0xFF8F8F8F),
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            fontFamily: 'Montserrat'),
        backgroundImage: "lib/assets/images/hello3.jpg",
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        marginDescription: EdgeInsets.only(top: 50.0),
        marginTitle: EdgeInsets.only(
          top: 400.0,
        ),
        maxLineTextDescription: 3,
      ),
    );
  }

  void onDonePress() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterScreen()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xff8F56FF),
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return TextButton(
      child: Text('Done'),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => RegisterScreen()),
        );
      },
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Color(0xff8F56FF),
    );
  }

  ButtonStyle myButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<OutlinedBorder>(StadiumBorder()),
      backgroundColor: MaterialStateProperty.all<Color>(Color(0x33F3B4BA)),
      overlayColor: MaterialStateProperty.all<Color>(Color(0x33FFA8B0)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: new IntroSlider(
        // List slides
        slides: this.slides,

        // Skip button
        renderSkipBtn: this.renderSkipBtn(),
        skipButtonStyle: myButtonStyle(),

        // Next button
        renderNextBtn: this.renderNextBtn(),
        nextButtonStyle: myButtonStyle(),

        // Done button
        renderDoneBtn: this.renderDoneBtn(),
        onDonePress: this.onDonePress,
        doneButtonStyle: myButtonStyle(),

        // Dot indicator
        colorDot: Color(0x33FFA8B0),
        colorActiveDot: Color(0xff8F56FF),
        sizeDot: 13.0,

        // Show or hide status bar
        hideStatusBar: true,
        backgroundColorAllSlides: Colors.grey,

        // Scrollbar
        verticalScrollbarBehavior: scrollbarBehavior.SHOW_ALWAYS,
      ),
    );
  }
}
