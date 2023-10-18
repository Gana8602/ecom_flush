import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';

class HeadSlider extends StatefulWidget {
  const HeadSlider({super.key});

  @override
  State<HeadSlider> createState() => _HeadSliderState();
}

class _HeadSliderState extends State<HeadSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width,
     
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
         child:  AnotherCarousel(
                    borderRadius: true,
                    dotSize: 4.5,
                    dotColor: Colors.blue,
                    
                    animationDuration: Duration(microseconds: 500),
                    dotBgColor: Colors.transparent,
                    images: [
                      ExactAssetImage('assets/slider1.png'),
                      ExactAssetImage('assets/slider2.png'),
                      
                    ],
                  ),
        ),
      ),
    );
  }
}
