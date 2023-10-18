import 'package:ecom/screens/category/widgets/category_View.dart';
import 'package:flutter/material.dart';
import 'package:ecom/screens/category/widgets/cat_App_BAr.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  State<CategoryPage> createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const CatAppBAr(),
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            child: Column(
              children: [
                const Text(
                  'Categories',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  height: 30,
                  width: 400,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'search category here...',
                      style: TextStyle(color: Colors.blueAccent),
                    ),
                  ),
                )
              ],
            ),
          ),
          const categoryView(),
        ],
      ),
    );
  }
}
