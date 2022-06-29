import 'package:clubmark3/models/models.dart';
import 'package:flutter/material.dart';

class HeroCarouselCard extends StatelessWidget {
  final FeaturedEvent? featuredevents;
  final Event? event;
  const HeroCarouselCard({this.featuredevents, this.event});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5.0, vertical: 16),
        child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                    event == null ? featuredevents!.imageUrl : event!.imageUrl,
                    fit: BoxFit.cover,
                    width: 1000.0),
                Positioned(
                  bottom: 0.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0xCC0a0a0a).withOpacity(0.2),
                          const Color(0xCC0a0a0a).withOpacity(0.4),
                          const Color(0xCC0a0a0a).withOpacity(0.5),
                          const Color(0xCC0a0a0a).withOpacity(0.6),
                          const Color(0xCC0a0a0a).withOpacity(0.7),
                          const Color(0xCC0a0a0a).withOpacity(0.8),
                          const Color(0xCC0a0a0a).withOpacity(0.9),
                          const Color(0xCC0a0a0a),
                          const Color(0xCC000000),
                          const Color(0xCC000000),
                          const Color(0xCC000000),
                        ],
                      ),
                    ),
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                    child: Text(
                      event == null ? featuredevents!.name : event!.name,
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.transparent,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
