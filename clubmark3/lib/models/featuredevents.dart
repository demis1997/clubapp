import 'package:equatable/equatable.dart';

class FeaturedEvent extends Equatable {
  final String name;
  final String imageUrl;

  const FeaturedEvent({required this.imageUrl, required this.name});

  @override
  // ignore: todo
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

  static List<FeaturedEvent> featuredevents = [
    FeaturedEvent(
        imageUrl:
            'https://in-cyprus.philenews.com/wp-content/uploads/2020/03/guaba-3.jpg',
        name: 'Guaba Reggae Tuesday'),
    FeaturedEvent(
        imageUrl:
            'https://allaboutlimassol.com/en/assets/components/phpthumbof/cache/26524-11067.STP_2143.0e8e793c75ab5138881661a9c72f2b8f.jpg',
        name: 'Get Breezy '),
    FeaturedEvent(
        imageUrl:
            'https://images.myguide-cdn.com/cyprus/companies/7-seas-music-club/large/7-seas-music-club-423929.jpg',
        name: 'Pirate Anthem'),
    FeaturedEvent(
        imageUrl:
            'https://djmag.com/sites/default/files/styles/djmag_landscape__691x372_/public/top100/clubs/image/MAD%20Club%202.jpg?itok=o4NwHsMC',
        name: 'The Harrowing'),
  ];
}
