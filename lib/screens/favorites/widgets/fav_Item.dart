import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class FavItems extends StatelessWidget {
  const FavItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 7; i++)
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 0.5),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 5,
                      color: Colors.black26)
                ],
                // border: Border.all(color: Colors.blue),
                // gradient: const LinearGradient(
                //     begin: Alignment.centerLeft,
                //     end: Alignment.centerRight,
                //     colors: [Color(0xffdbdbdb), Color(0xfff6feff)])
                color: Colors.white),
            height: 90,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Container(
                    height: 70,
                    width: 70,
                    decoration:  BoxDecoration(
                      color: AppColor.LLB,
                     
                        borderRadius: const BorderRadius.all(Radius.circular(10)),
                        image: const DecorationImage(
                            image: AssetImage('assets/burger.png'),
                            fit: BoxFit.cover)),
                  ),
SizedBox(width: 15,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    
                    Text('Burger with cheese',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    Text('Atribute', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black38),)
                  ],),
                  
                      
                    Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(CupertinoIcons.heart_fill, color: Colors.red,),
                      Text('50 ₹', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                      
                    ],
                  ),
                  SizedBox(width: 20),
                  Icon(Icons.arrow_forward_ios, size: 15,)
                  
                ]),
          )
      ],
    );
  }
}
