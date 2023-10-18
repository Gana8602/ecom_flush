import 'package:ecom/screens/Home/widgets/HomePage_appBar.dart';
import 'package:ecom/screens/cart/Cart_page.dart';
import 'package:ecom/screens/login/register/Login.dart';
import 'package:ecom/screens/splashandonboadring/onb.dart';
import 'package:ecom/screens/splashandonboadring/onboaddring.dart';
import 'package:ecom/screens/splashandonboadring/spash_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'screens/Home/home.dart';
import 'screens/Profilepage/profile_Page.dart';
import 'screens/login/register/demo.dart';

bool show = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
static bool launch = true;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

     home:
      
       launch? FutureBuilder(
        future: Future.delayed(const Duration(seconds: 3)),
        builder: (ctx, timer) =>
        timer.connectionState == ConnectionState.done
            ?  OnboardingPage()
            : SplashScreen(),
      ):  OnboardingPage(),



      // routes: {
      //   "/": (context) => MyHomePage(),
      //   "cartpage": (context) =>CartPage() ,
      //   "register": (context) => RegisterPage(),
      //   "login": (context) => LoginPage(),
      //   "category": (context) => CategoryPage(),
      //   "fav": (context) => FavoritesPage(),
      //   "item details": (context) => Itempage(),
      //   "notification": (context) => NotificationPage(),
      //   "order": (context) => OrderedPage(),
      //   "item listing": (context) => ProductPage(),
      //   "profile": (context) => ProfilePage(),
      //   "search": (context) => SearchPage(),
      //   "onboarding": (context) => Onboardingpage(),
      //   "splash": (context) => SplashScreen(),

        
      //         },
    );
    
  }
}
