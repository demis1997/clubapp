import 'package:clubmark3/models/models.dart';
import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventsCarousel extends StatelessWidget {
  final List<Event> events;
  const EventsCarousel({Key? key, required this.events}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: Align(
        alignment: Alignment.topLeft,
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: EventCard(event: events[index]),
            );
          },
          itemCount: events.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
        ),
      ),
    );
  }
}
