import 'package:flutter/material.dart';

import '../../../utils/Colors.dart';
import '../../Home/widgets/HomePage_appBar.dart';

class CheckoutButton extends StatelessWidget {
  const CheckoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Container(
          height: 50,
          width: 180,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          offset: Offset(1, 0.5),
                          blurStyle: BlurStyle.outer,
                          blurRadius: 5,
                          color: Colors.black26)
                    ],
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Colors.white38),
                child: Center(
                    child: Text(
                  '-',
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: Center(
                    child: Text(
                  '1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            offset: Offset(1, 0.5),
                            blurStyle: BlurStyle.outer,
                            blurRadius: 5,
                            color: Colors.black26)
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(25)),
                      color: Colors.white38),
                  child: Center(
                      child: Text(
                    '+',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ))),
            ],
          )),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MyAppbar(
                           pageIndex: 2 ,
                        )));
          },
          child: Container(
            height: 50,
            width: 180,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              color: AppColor.Primary,
            ),
            child: const Center(
                child: Text(
              'Buy Now',
              style: TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        )
      ]),
    );
  }
}
