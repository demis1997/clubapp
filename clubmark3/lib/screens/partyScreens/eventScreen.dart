import 'package:clubmark3/models/events_model.dart';
import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  static const String routeName = '/viewEvent';
  static Route route({required Event event}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => EventScreen(event: event));
  }

  final Event event;

  const EventScreen({required this.event});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF1F1F1F),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(
          bottom: 20.0,
          right: 30,
          left: 30,
        ),
        child: SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width / 2,
          child: TextButton(
            child: Text('Book Now'),
            onPressed: () {
              Navigator.pushNamed(context, '/bookTicket', arguments: event);
            },
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all<Color>(Color(0xFF8F56FF)),
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
              )),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: HeroCarouselCard(
              event: event,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/', arguments: event);
                  },
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 20),
            child: Text(
              'January 19th  ·  11 PM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Monsterrat',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300, left: 300),
            child: Text(
              '${event.clubName.toString()}',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontFamily: 'Monsterrat',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 350, left: 20),
            child: Text(
              'Summary of Event',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontFamily: 'Monsterrat',
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 380, left: 20, right: 20),
            child: Text(
              "${event.description.toString()}",
              style: TextStyle(
                color: Colors.grey[350],
                fontSize: 14,
                fontFamily: 'Monsterrat',
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 480, left: 55),
                  child: Icon(
                    Icons.tag_faces_rounded,
                    color: Colors.teal,
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 480, right: 170, left: 40),
                  child: Icon(
                    Icons.confirmation_number_outlined,
                    color: Colors.pink[300],
                  ),
                ),
              ),
              Flexible(
                child: Padding(
                  padding: EdgeInsets.only(top: 480, right: 90),
                  child: Icon(
                    Icons.filter_9_outlined,
                    color: Colors.blue[300],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 520,
                ),
                child: Text(
                  "Vibes",
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 520),
                child: Text(
                  "Ticket Price",
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 520,
                ),
                child: Text(
                  "Age Restriction",
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 560, left: 50),
                child: Text(
                  'Jazz',
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 560, right: 100, left: 70),
                child: Text(
                  "€${event.ticketType1Price.toString()}",
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 560, right: 90),
                child: Text(
                  "+18",
                  style: TextStyle(
                      color: Colors.grey[350],
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                      decoration: TextDecoration.none),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 610, right: 20, left: 20),
            child: StatisticsSection(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 10, top: 720),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Location',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'Monsterrat',
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 150),
                  child: Icon(
                    Icons.location_pin,
                    color: Color(0xFF8F56FF),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 5),
                  child: Text(
                    'Akteou 5, Cydonia Gardens',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontFamily: 'Monsterrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 750.0, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: MediaQuery.of(context).size.height / 10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 30.0),
                child: Text(
                  'Map Here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ),
            ),
          ),
        ], //up from here
      ),
    );
  }
}

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.person,
                          color: Color(0xFF8F56FF),
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, right: 5),
                        child: Text(
                          '60% of the audience are single',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width - 40,
            height: MediaQuery.of(context).size.height / 10,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800]),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.female,
                          color: Color(0xFF8F56FF),
                          size: 50,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0),
                        child: Text(
                          '75% of the audience are female',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
