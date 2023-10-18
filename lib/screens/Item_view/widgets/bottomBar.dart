import 'package:flutter/material.dart';

class checkNavBar extends StatelessWidget {
  const checkNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: ListView(physics: const AlwaysScrollableScrollPhysics(), children: [
        Row(children: [
          Container(
            height: 50,
            width: 50,
            color: Colors.blue,
          )
        ]),
      ]),
    );
  }
}