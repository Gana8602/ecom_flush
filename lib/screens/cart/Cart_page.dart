import 'package:ecom/screens/cart/widgets/appBartCart.dart';
import 'package:ecom/screens/cart/widgets/cart_products.dart';
import 'package:ecom/screens/cart/widgets/checkoutbar.dart';
import 'package:flutter/material.dart';

import '../../utils/Colors.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView(children: [
        
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:10.0, top: 5,bottom: 5,right: 10.0),
              child: Text(
                'Your Cart',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0, top: 5,bottom: 5,right:10 ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'There are 4 Products in your cart',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        'Clear Cart',
                        style: TextStyle(color: Colors.red, fontSize: 18),
                      )),
                ],
              ),
            )
          ],
        ),
        CartProducts(),
        
      ]),
      bottomNavigationBar: CartCheckout(),
    );
  }
}
