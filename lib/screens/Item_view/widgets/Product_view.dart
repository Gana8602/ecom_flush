import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class ListAttributes extends StatelessWidget {
  const ListAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> images = [
      'assets/cat3.png',
      'assets/cat9.png',
      'assets/cat11.png',
      'assets/cat12.png',
      'assets/burger.png',
    ];
    final List<Color> colours = [
      AppColor.LLB,
      AppColor.LPP,
      AppColor.LightGre,
      AppColor.LlGG,
      AppColor.Lpink,
    ];
    return Container(
      height: 150,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (contex, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      color: colours[index],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    images[index],
                                  ),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}