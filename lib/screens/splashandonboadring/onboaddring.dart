import 'package:ecom/screens/login/register/Login.dart';
import 'package:ecom/screens/login/register/demo.dart';
import 'package:flutter/material.dart';

import '../../main.dart';

class Onboardingpage extends StatelessWidget {
  const Onboardingpage({super.key});

  @override
  Widget build(BuildContext context) {
    if(MyApp.launch) {
      MyApp.launch = false;}
    return Scaffold(
      body: Center(
        child: Column(
         
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150,),
              child: Container(
               
                height: 500,
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(125)),
                              image: DecorationImage(
                                  image: AssetImage('assets/onb1.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Text('Heading', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Text(
                          'Typically, UX designers apply 3-4 screens for onboarding.Itsenough to give a quick insight into the app benefits or functions without making this pre-interaction stage too long. And of course, it is good to boost usability from the first minutes of interaction.'),
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
             
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Onboardingpagetwo()));
                },
                child: const Text('Next ->'))
          ],
        ),
      ),
    );
  }
}

class Onboardingpagetwo extends StatelessWidget {
  const Onboardingpagetwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150,),
              child: Container(
                height: 500,
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(125)),
                              image: DecorationImage(
                                  image: AssetImage('assets/onb2.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Text('Heading', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Text(
                          'Typically, UX designers apply 3-4 screens for onboarding.Itsenough to give a quick insight into the app benefits or functions without making this pre-interaction stage too long. And of course, it is good to boost usability from the first minutes of interaction.'),
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Onboardingpagethree()));
                },
                child: const Text('Next ->'))
          ],
        ),
      ),
    );
  }
}

class Onboardingpagethree extends StatelessWidget {
  const Onboardingpagethree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150,),
              child: Container(
                height: 500,
                width: 300,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Container(
                          height: 250,
                          width: 250,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(125)),
                              image: DecorationImage(
                                  image: AssetImage('assets/onb3.png'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      const Text('Heading', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      const Text(
                          'Typically, UX designers apply 3-4 screens for onboarding.Itsenough to give a quick insight into the app benefits or functions without making this pre-interaction stage too long. And of course, it is good to boost usability from the first minutes of interaction.'),
                    ]),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Demodart()));
                },
                child: const Text('Next ->'))
          ],
        ),
      ),
    );
  }
}
