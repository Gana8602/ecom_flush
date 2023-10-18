
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      
      body:Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          height: 100,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Row(children: [
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left:10.0),
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/profile.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(35)),),
              ),
            ),
            const SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello + User Name',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.black87),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'User Phone Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )
              ],
            )
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),
          child: const Row(children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Icon(
                Icons.person,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Profile',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17,),
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),
          child: const Row(children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Icon(
                CupertinoIcons.cube_box_fill,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'My Orders',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),
          child: const Row(children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Icon(
                Icons.book_online_outlined,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'terms & Conditions',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),
          child: const Row(children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Icon(
                Icons.privacy_tip_outlined,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          height: 70,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: Colors.white,),
          child: const Row(children: [
            Padding(
              padding: EdgeInsets.only(left:10.0),
              child: Icon(
                Icons.exit_to_app,
                size: 25,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'LogOut',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            )
          ]),
        ),
        const SizedBox(
          height: 5,
        ),
      ]),
    ),
    );
  }
}
