import 'package:clubmark3/models/models.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ConfirmedScreen extends StatelessWidget {
  static const String routeName = '/confirmedScreen';
  static Route route({required Event event}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => ConfirmedScreen(
              event: event,
            ));
  }

  final Event event;
  const ConfirmedScreen({required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      backgroundColor: Color(0xFF1F1F1F),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BackButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/',
                    );
                  },
                  color: Colors.white,
                ),
                Stack(
                  children: [
                    // Padding(
                    //   padding: EdgeInsets.only(),
                    //   child: Image.asset('lib/assets/images/Ellipse 8.png'),
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(left: 120.0),
                      child: Text(
                        'Overview',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0),
            child: Icon(
              Icons.check_circle,
              color: Colors.teal,
              size: 60,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 0.0, top: 30),
            child: Text(
              'Tickets have been successfully booked!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, top: 20, right: 20),
            child: Text(
              'Congratulations, your ticket has been successfully booked, please see the details below',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
            child: Container(
              height: 400,
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
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 70.0,
                          top: 50,
                        ),
                        child: Row(
                          children: [
                            Text(
                              event.clubName,
                              style: TextStyle(fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 20),
                    child: Row(
                      children: [
                        Text(
                          'January 19 2021',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 100.0,
                          ),
                          child: Text(
                            '11:00 PM',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 15.0, right: 15, top: 10),
                    child: Row(
                      children: [
                        Text('Date ',
                            style: TextStyle(color: Colors.grey, fontSize: 16)),
                        Padding(
                          padding: const EdgeInsets.only(left: 185.0),
                          child: Text(
                            'Time',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 240.0, top: 40),
                    child: Text(
                      'Anton George',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 300.0, top: 10),
                    child: Text(
                      'Name',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 20, top: 30),
                    child: Row(
                      children: [
                        Text(
                          'King George A35, Germasogia, Limassol, Cyprus',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 12.0, left: 20, right: 20),
                    child: Divider(
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 20, top: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Total Price:',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        Text(
                          '€49.99',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90.0, left: 20, right: 20),
            child: Container(
              width: MediaQuery.of(context).size.width - 40,
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFF8F56FF),
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                  ),
                  onPressed: () {
                    print('booked');
                    Navigator.pushNamed(
                      context,
                      '/mybookings',
                    );
                  },
                  child: Text('View all my tickets')),
            ),
          ),
        ],
      ),
    );
  }
}
