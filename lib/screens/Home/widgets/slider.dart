import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderOne extends StatefulWidget {
  const SliderOne({super.key});

  @override
  State<SliderOne> createState() => _SliderOneState();
}

class _SliderOneState extends State<SliderOne> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 200,
        width: 400,
        
        child: ListView(
          children: [
            CarouselSlider(
              items: [
                //1st Image of Slider
                Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/slider1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      
                      children: [
                        Positioned(
                            top: 50,
                            left: 20,
                            child: Container(
                                height: 60,
                                width: 200,
                                child: const Text(
                                  'Fresh Vegitables Big Discounts',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 25),
                                ))),
                        const Positioned(
                            top: 110,
                            left: 20,
                            child: Text(
                              'Save up to 50% off on your first order',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.grey),
                            ))
                      ],
                    )),
      
                //2nd Image of Slider
                Container(
                  margin: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    image: const DecorationImage(
                      image: AssetImage("assets/slider2.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Stack(
                    children: [
                      Positioned(
                          top: 50,
                          left: 20,
                          child: Text(
                            'Don’t miss amazing',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          )),
                      Positioned(
                          top: 80,
                          left: 20,
                          child: Text(
                            'Sign Up for the daily news letter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.grey),
                          ))
                    ],
                  ),
                ),
              ],
      
              //Slider Container properties
              options: CarouselOptions(
                height: 180.0,
                enlargeCenterPage: true,
                autoPlay: true,
                aspectRatio: 16 / 9,
                autoPlayCurve: Curves.fastOutSlowIn,
                enableInfiniteScroll: true,
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                viewportFraction: 0.8,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
