import 'package:clubmark3/models/models.dart';
import 'package:flutter/material.dart';

class EventCheckoutCard extends StatelessWidget {
  final Event event;
  const EventCheckoutCard({
    Key? key,
    required this.event,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey[800],
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 20),
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: NetworkImage(
                              event.imageUrl,
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Text(
                      event.name,
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 70.0, top: 25, right: 5),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.teal.withOpacity(0.4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Text(
                          '€ ${event.ticketType1Price}',
                          style: TextStyle(
                              color: Colors.teal.withOpacity(0.9),
                              fontSize: 17),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 85.0,
                  top: 50,
                ),
                child: Row(
                  children: [
                    Text(
                      '${event.clubName}',
                      style: TextStyle(fontSize: 13),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Divider(
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 20),
            child: Row(
              children: [
                Text(
                  'January 19 2021',
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 100.0),
                  child: Text(
                    '11:00 PM',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 5),
            child: Row(
              children: [
                Text('Date ',
                    style: TextStyle(color: Colors.grey, fontSize: 13)),
                Padding(
                  padding: const EdgeInsets.only(left: 185.0),
                  child: Text(
                    'Time',
                    style: TextStyle(color: Colors.grey, fontSize: 13),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15, top: 15),
            child: Row(
              children: [
                Text(
                  '${event.location}',
                  style: TextStyle(color: Colors.white, fontSize: 13),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
