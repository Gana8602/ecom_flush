import 'package:ecom/screens/login/register/Login.dart';
import 'package:ecom/screens/login/register/demo.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (_) => Demodart()),
    );
  }

  Widget _buildImage(String assetName) {
    return Align(
      child: Image.asset('assets/$assetName.png', width: 350.0),
      alignment: Alignment.bottomCenter,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);
   
    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
     bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.zero,
    );

    return IntroductionScreen(
      key: introKey,
      pages: [
        PageViewModel(
          title: "Connect With Everyone",
          body: "Here you can have whatever description you would like to have, you can type it all in here",
          image: _buildImage('onb1'),
          decoration: pageDecoration,
          
        ),
        PageViewModel(
          title: "Have Access Everywhere!",
          body: "Here you can have whatever description you would like to have, you can type it all in here",
          image: _buildImage('onb2'),
          decoration: pageDecoration,
          
        ),
        PageViewModel(
          title: "Here We Start!",
          body: "Here you can have whatever description you would like to have, you can type it all in here",
          image: _buildImage('onb3'),
          decoration: pageDecoration,
          
        ),
      ],
      showSkipButton: true,
      dotsFlex: 0,
      nextFlex: 0,
      skip: const Text('Skip', style: TextStyle(fontSize: 20)),
      next: const Icon(Icons.arrow_forward, size: 25),
      done: const Text('Done', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
      onDone: () {
        _onIntroEnd(context);
      },
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}