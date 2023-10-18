import 'package:ecom/screens/Search/searchAppBar.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SearchAppbar(),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Column(
              children: [
                Container(
                  height: 40,
                  width: MediaQuery.of(context).size.width,
                  child:  const Row(children: [
                    Icon(Icons.search_outlined),
                    Text('Search Your Product here ...')
                  ]),
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                      child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      for (int i = 1; i < 7; i++)
                        Container(
                          margin: const EdgeInsets.all(5),
                          height: 100,
                          width: 350,
                          decoration: const BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              color: Colors.blue),
                        ),
                    ],
                  )),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
