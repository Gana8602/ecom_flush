import 'package:ecom/utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class Banners extends StatelessWidget {
  const Banners({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> Images = [
      'assets/banner-1.png',
      'assets/banner-2.png',
      'assets/banner-3.png',
    ];
    final List<String> Titles = [
      'Everyday Fresh & Clean with Our Products',
      'Make your Breakfast Healthy and Easy',
      'The best Organic Product Online',
    ];

    return Container(
      height: 650,
      child: ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.only(left:10.0, right: 10.0, bottom: 5, top: 5),
              child: Column(
                children: [
                  Container(
                    height: 200,
                    
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            image: AssetImage(Images[index]),
                            fit: BoxFit.cover)),
                    child: Stack(children: [
                      Positioned(
                          bottom: 50,
                          left: 60,
                          child: Container(
                              height: 100,
                              width: 250,
                              child: Text(
                                Titles[index],
                                style: const TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ))),
                      Positioned(
                          bottom: 50,
                          left: 60,
                          child: Container(
                            height: 30,
                            width: 100,
                            color: AppColor.Primary,
                            child: const Center(
                                child: Text(
                              ' Shop Now ->',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            )),
                          )),
                    ]),
                  ),
                ],
              ),
            );
          }),
    );
  }
}
