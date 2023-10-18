import 'package:ecom/screens/Item_view/Item_page.dart';
import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';

class ProductListtwo extends StatelessWidget {
  const ProductListtwo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<String> Images = [
      'assets/cat3.png',
      'assets/cat9.png',
      'assets/cat11.png',
      'assets/cat12.png',
      'assets/burger.png',
    ];
    final List<String> headdd = [
      'Cake & Milk',
      'Organic kiwi',
      'Peach',
    ];
    final List<String> dicription = [
      ' Description about Product 1',
      'Description about Product 2',
      'Description about Product 3',
    ];
    final List<Color> colours = [
      AppColor.LLB,
      AppColor.LPP,
      AppColor.LightGre,
      AppColor.LlGG,
      AppColor.Lpink,
    ];

    return Container(
      height: 410,
      width: 400,
      child: ListView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 3,
          itemBuilder: (BuildContext context, index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Itempage()));
                },
                child: Container(
                  height: 120,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Colors.white,
                  ),
                  child: Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: colours[index]),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(Images[index]))),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              headdd[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.black),
                            ),
                          ),
                          const SizedBox(
                            height: 6,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Text(
                              dicription[index],
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 17,
                                  color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0, left: 8.0),
                          child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.shopping_cart,
                                color: Colors.blue,
                              )),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            );
          }),
    );
  }
}
