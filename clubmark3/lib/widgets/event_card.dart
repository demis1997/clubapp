import 'package:clubmark3/models/models.dart';
import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final Event event;
  const EventCard({Key? key, required this.event}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 0.0),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(context, '/viewEvent', arguments: event);
        },
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Container(
                width: MediaQuery.of(context).size.width / 2.2,
                height: 310,
                child: Image.network(
                  event.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 15.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2.4,
                  height: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Color(0xFF1F1F1F),
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF1F1F1F).withOpacity(0.9),
                          Color(0xFF1F1F1F).withOpacity(0.6)
                        ],
                        stops: [
                          0.0,
                          1.0
                        ]),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 24.0, left: 10),
                            child: Text(
                              event.name,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0, top: 7),
                        child: Row(
                          children: [
                            Text(
                              'August 12th · 23:00',
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 7, left: 10),
                            child: Text(
                              '\€${event.ticketType1Price} / Ticket',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontFamily: 'Montserrat'),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(top: 7, left: 10),
                              child: Divider(
                                color: Colors.white,
                                thickness: 17,
                                height: 15,
                              )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
