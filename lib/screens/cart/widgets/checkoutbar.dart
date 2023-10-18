import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class CartCheckout extends StatelessWidget {
  const CartCheckout({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10), topRight: Radius.circular(10)),
        color: Colors.white.withOpacity(0.2),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        
        children: [
        Row(children: [
          Padding(
            padding: const EdgeInsets.only(left:10.0),
            child: Text('Total', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
          ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right:18.0),
            child: Text('100 ₹',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          )
        ],),
        Padding(
            padding: const EdgeInsets.only(left:10.0, right: 10.0, top: 10, bottom: 10),
            child: Container(
              height: 40,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColor.Primary,
                borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Center(child: Text('Check Out')),
            ),
          )
      ]),
    );
  }
}
