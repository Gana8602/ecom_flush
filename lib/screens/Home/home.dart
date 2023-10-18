import 'package:ecom/screens/Home/widgets/Animate_slider.dart';
import 'package:ecom/screens/Home/widgets/Category_widget.dart';
import 'package:ecom/screens/Home/widgets/Product_List2.dart';
import 'package:ecom/screens/Home/widgets/banner.dart';
import 'package:ecom/screens/Home/widgets/product.dart';
import 'package:ecom/screens/Home/widgets/product_list.dart';
import 'package:ecom/screens/Home/widgets/search.dart';
import 'package:ecom/screens/cart/Cart_page.dart';
import 'package:ecom/screens/category/category_page.dart';
import 'package:ecom/screens/favorites/Fav_Page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../../utils/Colors.dart';

class Product {
  final String name;
  final String image;
  final String seller;
  final double price;
  final double originalPrice;
  final double rating;

  const Product({
    required this.name,
    required this.image,
    required this.seller,
    required this.price,
    required this.originalPrice,
    required this.rating,
  });
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(children: [
        const SearchBarr(),
        const HeadSlider(),
        const Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(
            'Featured Categories',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: AppColor.Secondary),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 2.0),
          child: Row(
            children: [
              TextButton(
                child: const Text(
                  'Cake & Milk',
                  style: TextStyle(fontSize: 15, color: AppColor.TextButton),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryPage()));
                },
              ),
              TextButton(
                child: const Text('Coffes & Teas',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryPage()));
                },
              ),
              TextButton(
                child: const Text('Pet Foods',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryPage()));
                },
              ),
              TextButton(
                child: const Text('Vegitables',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const CategoryPage()));
                },
              )
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const CategoryWidget(),
        const SizedBox(
          height: 10,
        ),
        const Banners(),
        const SizedBox(
          height: 15,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 10),
          child: Text('Popular Products',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.Secondary)),
        ),
        Padding(
          padding: const EdgeInsets.only(left:10.0, top: 6),
          child: Row(
            
            children: [
              // TextButton(
                // child: const
                Text(
                  'All',
                  style: TextStyle(fontSize: 15, color: AppColor.TextButton),
                ),
                SizedBox(width: 10,),
                // onPressed: () {
                //   Navigator.push(
                //       context,
                //       MaterialPageRoute(
                //           builder: (context) => const CategoryPage()));
                // },
              // ),
              // TextButton(
                // child: const 
                Text('Milk & Dairies',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
                    SizedBox(width: 10,),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const CategoryPage()));
              //   },
              // ),
              // TextButton(
                // child: const
                 Text('Coffes & Teas',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
                    SizedBox(width: 10,),
                // onPressed: () {
                  // Navigator.push(
                      // context,
                      // MaterialPageRoute(
                          // builder: (context) => const CategoryPage()));
                // },
              // ),
              // TextButton(
              //   child: const 
                Text('Pet Foods',
                    style: TextStyle(fontSize: 15, color: AppColor.TextButton)),
              //   onPressed: () {
              //     Navigator.push(
              //         context,
              //         MaterialPageRoute(
              //             builder: (context) => const CategoryPage()));
              //   },
              // ),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Productcards(),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 25),
          child: Container(
            child: const Text(
              'Top Selling',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.Secondary),
            ),
          ),
        ),
        const Divider(
          color: Colors.black38,
        ),
        const ProductListOne(),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, top: 25),
          child: Container(
            child: const Text(
              'Trending Products',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.Secondary),
            ),
          ),
        ),
        const Divider(
          color: Colors.black38,
        ),
        const ProductListtwo(),
      ]),
    );
  }
}
