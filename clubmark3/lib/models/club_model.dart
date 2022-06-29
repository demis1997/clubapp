import 'package:equatable/equatable.dart';

class Club extends Equatable {
  final String name;
  final String imageUrl;
  final String location;
  final int phoneNumber;
  const Club({
    required this.name,
    required this.imageUrl,
    required this.location,
    required this.phoneNumber,
  });

  @override
  List<Object?> get props => [];

  static List<Club> clubs = [
    Club(
      name: 'Breeze club',
      imageUrl: '',
      location: 'Next to Papas hypermarket',
      phoneNumber: 96090943,
    ),
  ];
}
