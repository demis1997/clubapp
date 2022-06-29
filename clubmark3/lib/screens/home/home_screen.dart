import 'package:clubmark3/models/events_model.dart';

import 'package:clubmark3/widgets/section_title.dart';
import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = '/homescreen';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName), builder: (_) => HomeScreen());
  }

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Container(
      height: height,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Color(0xFF1F1F1F),
        appBar: customAppBar(
          title: 'Club App',
        ),
        bottomNavigationBar: bottomAppBar(),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  children: [
                    SectionTitle(title: 'Recommended Events'),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      'View All',
                      style: TextStyle(
                          color: Colors.purple,
                          fontFamily: 'Monsterrat',
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              EventsCarousel(
                  events:
                      Event.events.where((event) => event.isPopular).toList()),
              Row(
                children: [
                  SectionTitle(title: 'Rock'),
                  SizedBox(
                    width: 270,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Monsterrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              EventsCarousel(
                  events: Event.events.where((event) => event.isRock).toList()),
              Row(
                children: [
                  SectionTitle(title: 'Jazz'),
                  SizedBox(
                    width: 280,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Monsterrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              EventsCarousel(
                  events: Event.events.where((event) => event.isJazz).toList()),
              Row(
                children: [
                  SectionTitle(title: 'Pop'),
                  SizedBox(
                    width: 280,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Monsterrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              EventsCarousel(
                  events: Event.events.where((event) => event.isPop).toList()),
              Row(
                children: [
                  SectionTitle(title: 'Hip-Hop'),
                  SizedBox(
                    width: 240,
                  ),
                  Text(
                    'View All',
                    style: TextStyle(
                        color: Colors.purple,
                        fontFamily: 'Monsterrat',
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              EventsCarousel(
                  events:
                      Event.events.where((event) => event.isHipHop).toList()),
            ],
          ),
        ),
      ),
    );
  }
}
