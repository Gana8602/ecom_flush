import 'package:flutter/material.dart';

import '../../utils/Colors.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.Primary,
        title: const Text('Notifications'),
      ),
      body: ListView(
        children: [
          for (int i = 1; i < 3; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(10),
                height: 80,
                decoration: const BoxDecoration(
                    boxShadow: [
                  BoxShadow(
                      offset: Offset(1, 0.5),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 5,
                      color: Colors.black26)
                ],
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Title',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'description here',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold, color: Colors.black54),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
        ],
      ),
    );
  }
}
