import 'package:ecom/screens/Ordered_Page/widgets/OAppBar.dart';
import 'package:flutter/material.dart';

class OrderedPage extends StatefulWidget {
  const OrderedPage({super.key});

  @override
  State<OrderedPage> createState() => _OrderedPageState();
}

class _OrderedPageState extends State<OrderedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        
        children: [
          
          
          Container(
            padding: const EdgeInsets.all(5),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            child: ListView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
              for(int i=1; i<5; i++)
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: 210,
                  
                  decoration: BoxDecoration(
                    boxShadow:[ BoxShadow(offset: Offset(1, 0.5),blurStyle: BlurStyle.outer,blurRadius: 5, color: Colors.black26)],
                    color: Colors.white, borderRadius: const BorderRadius.all(Radius.circular(20))),
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                              ),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text("Order ID: 22921945166465"),
                              Text("Sold To: Name")
                            ],
                          )),
                          const Divider(color: Colors.black,),
                      const SizedBox(
                        height: 5,
                      ),
                      Container(
                        height: 110,
                        decoration: const BoxDecoration(),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: const BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15))),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(" Burger with cheesy"),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          height: 10,
                                          width: 10,
                                          decoration: const BoxDecoration(
                                              color: Colors.green,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(5)))),
                                      const Text('Delivery Expected by 10 July 2023')
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  const Row(
                                    children: [
                                      Icon(Icons.fire_truck_outlined),
                                      Text('Your order Has Been Shipped')
                                    ],
                                  )
                                ],
                              ),
                              IconButton(
                                icon: const Icon(Icons.arrow_forward_ios),
                                onPressed: () {},
                              )
                            ]),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          )
        ],
      ),
    );
  }
}
