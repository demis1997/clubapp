import 'package:clubmark3/models/models.dart';
import 'package:clubmark3/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BookTicketScreen extends StatefulWidget {
  static const String routeName = '/bookTicket';

  final Event event;
  BookTicketScreen(this.event);
  static Route route({required Event event}) {
    return MaterialPageRoute(
        settings: RouteSettings(name: routeName),
        builder: (_) => BookTicketScreen(event));
  }

  @override
  _BookTicketScreenState createState() => new _BookTicketScreenState(event);
}

class _BookTicketScreenState extends State<BookTicketScreen> {
  late Event event;
  _BookTicketScreenState(Event event) {
    this.event = event;
  }

  var _ticketTypes = [
    '${Event.events[6].ticketType1} ' +
        '€' +
        '${Event.events[6].ticketType1Price}',
    '${Event.events[6].ticketType2} ' +
        '€' +
        '${Event.events[6].ticketType2Price}',
    '${Event.events[6].ticketType3} ' +
        '€' +
        '${Event.events[6].ticketType3Price}',
    '${Event.events[6].ticketType4} ' +
        '€' +
        '${Event.events[6].ticketType4Price}',
  ];
  var _ticketQuantity = [
    1,
    2,
    3,
    4,
    5,
    6,
  ];

  var _currentQuantitySelected = 1;
  var _currentTypeSelected = '${Event.events[6].ticketType1} ' +
      '€' +
      '${Event.events[6].ticketType1Price}';

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
                    Navigator.pushNamed(context, '/viewEvent',
                        arguments: event);
                  },
                  color: Colors.white,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: Text(
                    'Book Ticket',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30, top: 130),
            child: EventCheckoutCard(
              event: event,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 200),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.12,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[800],
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 15),
                    child: Text(
                      'Select ticket type',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 50.0, left: 15, right: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.grey[800],
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 15),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField<String>(
                            style: TextStyle(color: Colors.white),
                            dropdownColor: Colors.purple[800],
                            items:
                                _ticketTypes.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem),
                              );
                            }).toList(),
                            onChanged: (newTypeSelected) {
                              setState(() {
                                this._currentTypeSelected = newTypeSelected!;
                                print(_currentTypeSelected);
                              });
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, top: 115),
                    child: Text(
                      'Enter quantity',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 150.0, left: 15, right: 15),
                    child: Container(
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          color: Colors.grey[800],
                          border: Border.all(color: Colors.white)),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 0.0, left: 20),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField<int>(
                            dropdownColor: Colors.purple[800],
                            style: TextStyle(color: Colors.white),
                            items: _ticketQuantity.map((int dropDownIntItem) {
                              return DropdownMenuItem<int>(
                                value: dropDownIntItem,
                                child: Text('$dropDownIntItem'),
                              );
                            }).toList(),
                            onChanged: (newQuantitySelected) {
                              setState(() {
                                this._currentQuantitySelected =
                                    newQuantitySelected!;
                                print(_currentQuantitySelected);
                              });
                            },
                            value: _currentQuantitySelected,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 220.0, left: 20, right: 20),
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
                            '/confirmedScreen',
                            arguments: event,
                          );
                        },
                        child: Text('Book Now'),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
