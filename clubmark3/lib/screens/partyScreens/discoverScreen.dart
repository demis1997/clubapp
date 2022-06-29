import 'package:carousel_slider/carousel_slider.dart';
import 'package:clubmark3/models/featuredevents.dart';
import 'package:clubmark3/models/events_model.dart';

import 'package:clubmark3/widgets/section_title.dart';
import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class DiscoverScreen extends StatelessWidget {
  static const String routeName = '/discover';
  static Route route() {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => DiscoverScreen());
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 4;
    return Container(
      height: height / 2,
      child: Scaffold(
        backgroundColor: Color(0xFF1F1F1F),
        bottomNavigationBar: bottomAppBar(),
        body: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 15.0, right: 10, top: 10, bottom: 10),
                  child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20)),
                      hintText: 'Search Events',
                      hintStyle: TextStyle(color: Colors.grey),
                      labelStyle: TextStyle(color: Colors.white),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Container(
                  child: CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.5,
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                      initialPage: 2,
                      autoPlay: true,
                    ),
                    items: FeaturedEvent.featuredevents
                        .map((featuredevents) =>
                            HeroCarouselCard(featuredevents: featuredevents))
                        .toList(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      SectionTitle(title: 'Events in your area'),
                      SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                EventsCarousel(
                    events: Event.events
                        .where((event) => event.isPopular)
                        .toList()),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    children: [
                      SectionTitle(title: 'Best clubs in your area'),
                      SizedBox(
                        width: 120,
                      ),
                    ],
                  ),
                ),
                EventsCarousel(
                    events:
                        Event.events.where((event) => event.isJazz).toList()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
