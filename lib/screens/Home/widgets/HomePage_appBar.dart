import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:ecom/screens/Home/home.dart';
import 'package:ecom/screens/Home/widgets/cont.dart';
import 'package:ecom/screens/Ordered_Page/OrderdPage.dart';
import 'package:ecom/screens/Profilepage/profile_Page.dart';
import 'package:ecom/screens/cart/Cart_page.dart';
import 'package:ecom/screens/favorites/Fav_Page.dart';
import 'package:ecom/screens/notification/Notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../../../utils/Colors.dart';

class MyAppbar extends StatefulWidget {
  

  const MyAppbar({Key? key, required int pageIndex, })
      :
        super(key: key);
  @override
  State<MyAppbar> createState() => _MyAppbarState();
}

class _MyAppbarState extends State<MyAppbar> {
  Color _color = Colors.blue!;
  int _PageIndex = 0;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> _screens = [
    MyHomePage(),
    const OrderedPage(),
    const CartPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          width: 100, // Set the desired width
          height: 100, // Set the desired height
          child: Image.asset('assets/log.png'),
        ),
        backgroundColor: AppColor.Primary,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const FavoritesPage()),
              );
            },
            icon: const Icon(Icons.favorite_border_outlined),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NotificationPage()),
              );
            },
            icon: const Icon(Icons.notifications),
          ),
        ],
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset("assets/log.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10.0),
                            child: Container(
                                height: 40,
                                width: 40,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/profile.png')))),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Text('Hi, Username'),
                        ],
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Home',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 50,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Categories',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: GestureDetector(
                          child: Container(
                            decoration: const BoxDecoration(
                                // border: Border.all(color: Colors.black),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            height: 50,
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 10.0),
                                  child: Text(
                                    'My Orders',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.normal,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 50,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Terms & conditions',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0, bottom: 2.0),
                        child: Container(
                          decoration: const BoxDecoration(
                              // border: Border.all(color: Colors.black),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          height: 50,
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                  'Privacy Policy',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Divider(
                        color: Colors.black,
                      ),
                      const SizedBox(height: 220),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 2.0, bottom: 2.0, left: 10, right: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade300,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(5))),
                          height: 50,
                          child: const Center(
                              child: Text(
                            'Logout',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.normal,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
      body: _screens[_PageIndex],
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        height: 60.0,
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 30,
            color: Colors.blue,
          ),
          Icon(
            CupertinoIcons.cube_box_fill,
            size: 30,
            color: Colors.blue,
          ),
          Icon(
            CupertinoIcons.cart,
            size: 30,
            color: Colors.blue,
          ),
          Icon(
            Icons.person,
            size: 30,
            color: Colors.blue,
          ),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.white,
        backgroundColor: AppColor.Primary,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        onTap: (index) {
          setState(() {
            _PageIndex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
