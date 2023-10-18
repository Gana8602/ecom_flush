import 'package:ecom/screens/Item_view/Item_page.dart';
import 'package:flutter/material.dart';

class Productcards extends StatelessWidget {
  const Productcards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 0.68,
        shrinkWrap: true,
        children: [
          for (int i = 1; i < 7; i++)
            InkWell(
              onTap: (){Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Itempage()));},
              child: Container(
                padding: const EdgeInsets.only(left: 0, top: 0, right: 0),
                margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Column(children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 70,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15)),
                          color: Colors.red,
                        ),
                        child: const Center(
                          child: Text(
                            '-50%',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      const Spacer(),
                      // const Icon(Icons.favorite_outline),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      height: 130,
                      width: 130,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/burger.png'),
                              fit: BoxFit.cover)),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, left: 5),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'name',
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                  Container(
                      padding: const EdgeInsets.only(bottom: 8, left: 5),
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'short description',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                            color: Colors.black45),
                      )),
                 
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('₹ 25',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color:Colors.black)),
                        Icon(Icons.shopping_cart_checkout_outlined),
                      ],
                    ),
                  )
                ]),
              ),
            ),
        ],
      ),
    );
  }
}
