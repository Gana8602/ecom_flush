import 'package:ecom/screens/Products/widgets/ProductAppBar.dart';
import 'package:ecom/screens/Products/widgets/Product_listing.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        const ProductAppBar(),
        Container(
          height: 80,
          child: const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              'category name',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        const Divider(),
        const ProductListing(),
      ]),
    );
  }
}
