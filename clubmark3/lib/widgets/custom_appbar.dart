import 'package:flutter/material.dart';
import 'package:clubmark3/providers/providers.dart';

// ignore: camel_case_types
class customAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;

  const customAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Color(0xFF1F1F1F),
      elevation: 0,
      actions: [
        Visibility(
          visible: true,
          child: Row(
            children: [
              Text(
                'Limassol, Cyprus',
                style: TextStyle(fontFamily: 'Monsterrat', fontSize: 14),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_down_rounded),
                color: Colors.pink[200],
              ),
            ],
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(50.0);
}
