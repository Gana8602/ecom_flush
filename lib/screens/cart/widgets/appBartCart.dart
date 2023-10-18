import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class AppBarCart extends StatelessWidget {
  const AppBarCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColor.Primary,
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 0.5),
            child: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {Navigator.pop(context);},
            ),
          ),
          const Text(
            'cart',
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
