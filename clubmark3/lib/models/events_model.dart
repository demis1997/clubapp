import 'package:equatable/equatable.dart';

class Event extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final int ticketsRemaining;
  final bool isPopular;
  final String clubName;
  final bool isReggae;
  final bool isHipHop;
  final bool isJazz;
  final bool isNative;
  final bool isPop;
  final bool isRock;
  final bool isLiveMusic;
  final String description;
  final String ticketType1;
  final String ticketType2;
  final String ticketType3;
  final String ticketType4;
  final double ticketType1Price;
  final double ticketType2Price;
  final double ticketType3Price;
  final double ticketType4Price;
  // final List menuItems;
  // final List statistics;
  final String location;
  // final DateTime date ;

  const Event({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.ticketsRemaining,
    required this.isPopular,
    required this.clubName,
    required this.isHipHop,
    required this.isJazz,
    required this.isNative,
    required this.isPop,
    required this.isReggae,
    required this.isRock,
    required this.isLiveMusic,
    required this.description,
    required this.ticketType1,
    required this.ticketType2,
    required this.ticketType3,
    required this.ticketType4,
    required this.ticketType1Price,
    required this.ticketType2Price,
    required this.ticketType3Price,
    required this.ticketType4Price,
    // required this.menuItems,
    // required  this.date,
    required this.location,
    // required this.statistics,
  });

  @override
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        ticketsRemaining,
        isPopular,
        clubName,
        description
      ];

  static List<Event> events = [
    Event(
      category: 'Live Music',
      name: 'Tuesday Live',
      imageUrl:
          'https://d1e00ek4ebabms.cloudfront.net/production/fd60d020-b4fa-47a3-9ef8-0af6265f7df3.jpg',
      price: 29.99,
      ticketsRemaining: 10,
      isPopular: true,
      isHipHop: false,
      isJazz: false,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: false,
      isLiveMusic: true,
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 9.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
      clubName: 'Breeze',
      description:
          'nTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday Live',
      location: 'King George 25, Limassol, Cyprus',

      // date: DateTime.april.toString().,
    ),
    Event(
      category: 'Ciprian',
      name: 'Ciprians event',
      imageUrl:
          'https://d1e00ek4ebabms.cloudfront.net/production/fd60d020-b4fa-47a3-9ef8-0af6265f7df3.jpg',
      price: 29.99,
      ticketsRemaining: 10,
      isPopular: true,
      isHipHop: true,
      isJazz: true,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: false,
      isLiveMusic: true,
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 9.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
      clubName: 'Ciprians club',
      description:
          'nTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday LiveTuesday Live',
      location: 'King George 25, Limassol, Cyprus',

      // date: DateTime.april.toString().,
    ),
    Event(
      category: 'Live Music',
      name: 'Friday Live',
      imageUrl:
          'https://d1e00ek4ebabms.cloudfront.net/production/164e49da-ec60-448d-b398-ca04eb5bf0fc.jpg',
      price: 49.99,
      ticketsRemaining: 49,
      isPopular: true,
      isHipHop: false,
      isJazz: false,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: false,
      isLiveMusic: true,
      clubName: '7Seas',
      description: 'Live music friday live descriotion',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Double',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 20.00,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Hip-Hop',
      name: '50Cent Live',
      imageUrl:
          'https://img.restaurantguru.com/cba3-Club-Breeze-image.jpg?@m@t@s@d',
      price: 49.99,
      ticketsRemaining: 49,
      isPopular: true,
      isHipHop: true,
      isJazz: false,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: false,
      isLiveMusic: false,
      clubName: 'Breeze Club',
      description: 'Come join us here today and watch 50cent live ',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 19.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Rock Music',
      name: 'Rock Night',
      imageUrl:
          'https://rumourscy.com/assets/images/background/rumours_bg_2.jpg',
      price: 49.99,
      ticketsRemaining: 49,
      isPopular: true,
      isHipHop: false,
      isJazz: false,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: true,
      isLiveMusic: false,
      clubName: 'Rumours',
      description: 'rock nigght ',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 20.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Live Music',
      name: 'Tinnie Trumpet ',
      imageUrl:
          'https://in-cyprus.philenews.com/wp-content/uploads/2020/03/guaba-3.jpg',
      price: 29.99,
      ticketsRemaining: 49,
      isPopular: true,
      isHipHop: false,
      isJazz: false,
      isNative: false,
      isPop: false,
      isReggae: false,
      isRock: false,
      isLiveMusic: true,
      clubName: 'Guaba',
      description: 'GuabaGuabaGuabaGuabaGuabaGuaba',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 14.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Slow',
      name: 'Slow dancing',
      imageUrl: 'https://thecastleclub.com/wp-content/uploads/2016/04/RB.jpg',
      price: 69.99,
      ticketsRemaining: 49,
      isPopular: false,
      isHipHop: false,
      isJazz: false,
      isNative: false,
      isPop: true,
      isReggae: false,
      isRock: false,
      isLiveMusic: false,
      clubName: 'Castle Club',
      description:
          'Slow dancingSlow dancingSlow dancingSlow dancingSlow dancing',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 38.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Slow',
      name: '80s Slow',
      imageUrl:
          'https://allaboutlimassol.com/en/assets/components/phpthumbof/cache/2321-0.7seas_bar_club_5.85ec0c394532d152780ea20a986c7cbd.jpg',
      price: 19.99,
      ticketsRemaining: 49,
      isPopular: false,
      isHipHop: false,
      isJazz: true,
      isNative: false,
      isPop: true,
      isReggae: false,
      isRock: false,
      isLiveMusic: false,
      clubName: 'Orama',
      description:
          '80s Slow80s Slow80s Slow80s Slow80slow80slow80slow80s0slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80slow80s Slow',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 4.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Jazz',
      name: 'Jazz Night',
      imageUrl:
          'https://allaboutlimassol.com/en/assets/components/phpthumbof/cache/2321-0.7seas_bar_club_5.85ec0c394532d152780ea20a986c7cbd.jpg',
      price: 19.99,
      ticketsRemaining: 49,
      isPopular: false,
      isHipHop: false,
      isJazz: true,
      isNative: false,
      isPop: true,
      isReggae: false,
      isRock: false,
      isLiveMusic: false,
      clubName: 'Orama',
      description:
          'azz Nightazz Nightazz Nightazz Nightazz Nightazz Nightazz Night',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 19.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
    Event(
      category: 'Jazz',
      name: 'Jazz Night 2',
      imageUrl:
          'https://allaboutlimassol.com/en/assets/components/phpthumbof/cache/2321-0.7seas_bar_club_5.85ec0c394532d152780ea20a986c7cbd.jpg',
      price: 19.99,
      ticketsRemaining: 49,
      isPopular: false,
      isHipHop: false,
      isJazz: true,
      isNative: false,
      isPop: true,
      isReggae: false,
      isRock: false,
      isLiveMusic: false,
      clubName: 'Orama',
      description:
          'Jazz Night 2Jazz Night 2Jazz Night 2Jazz Night 2Jazz Night 2Jazz Night 2',
      location: 'King George 25, Limassol, Cyprus',
      ticketType1: 'Single',
      ticketType2: 'Couch',
      ticketType3: 'Bar',
      ticketType4: 'Terrace',
      ticketType1Price: 29.99,
      ticketType2Price: 299.99,
      ticketType3Price: 24.99,
      ticketType4Price: 49.99,
    ),
  ];
}

class Club extends Equatable {
  final String name;
  final int ticketQuantity;

  const Club({
    required this.name,
    required this.ticketQuantity,
  });

  @override
  List<Object?> get props => [
        name,
        ticketQuantity,
      ];
}
