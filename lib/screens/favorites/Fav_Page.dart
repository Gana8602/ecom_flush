import 'package:ecom/screens/favorites/widgets/fav_Item.dart';
import 'package:ecom/utils/Colors.dart';
import 'package:flutter/material.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.Primary,
          title: Text(
            "Favorites",
            style: TextStyle(fontWeight: FontWeight.bold),
          )),
      body: ListView(
        children: [
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white38,
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    'Your Wishlist',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Text(
                        'There are 6 Products in this list',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                            color: Colors.grey),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const FavItems(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.only(left:20, right:20.0, bottom: 10),
          child: Container(
            height: 30,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Center(child: Text('Add all to Cart', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),)),
          ),
        ),
      ),
    );
  }
}
