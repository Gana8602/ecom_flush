import 'package:ecom/utils/Colors.dart';
import 'package:flutter/material.dart';

class CartProducts extends StatelessWidget {
  const CartProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 3; i++)
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
                  Text('50 ₹', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                  //  Column(
                  //   crossAxisAlignment: CrossAxisAlignment.start,
                  //   children: [
                  //     SizedBox(
                  //       height: 25,
                  //     ),
                  //     Text(
                  //       'cheesy Hot Burger',
                  //       style: TextStyle(
                  //           fontSize: 20, fontWeight: FontWeight.bold),
                  //     ),
                  //     SizedBox(
                  //       height: 20,
                  //     ),
                  //     Row(
                  //       children: [
                  //         Container(
                  //           height: 25,
                  //           width: 25,
                  //           decoration: const BoxDecoration(
                  //               color: Colors.grey,
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(5))),
                  //           child: const Center(child: Text('-')),
                  //         ),
                  //         SizedBox(
                  //           width: 3,
                  //         ),
                  //         Container(
                  //           height: 25,
                  //           width: 25,
                  //           decoration: BoxDecoration(
                  //               color: Colors.white,
                  //               border: Border.all(color: Colors.grey),
                  //               borderRadius:
                  //                   const BorderRadius.all(Radius.circular(5))),
                  //           child: const Center(child: Text('5')),
                  //         ),
                  //         const SizedBox(
                  //           width: 3,
                  //         ),
                  //         Container(
                  //           height: 25,
                  //           width: 25,
                  //           decoration: const BoxDecoration(
                  //               color: Colors.grey,
                  //               borderRadius:
                  //                   BorderRadius.all(Radius.circular(5))),
                  //           child: const Center(child: Text('+')),
                  //         )
                  //       ],
                  //     )
                      
                  //   ],
                  // ),
                  // const Spacer(),
                  // Column(
                  //   children: [
                  //     IconButton(
                  //         onPressed: () {}, icon: const Icon(Icons.close)),
                  //     const Spacer(),
                      
                  //   ],
                  // )
                ]),
          )
      ],
    );
  }
}
