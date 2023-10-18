import 'package:ecom/screens/Item_view/widgets/Product_view.dart';
import 'package:ecom/screens/Item_view/widgets/button.dart';
import 'package:flutter/Material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:readmore/readmore.dart';

import '../../utils/Colors.dart';

class Itempage extends StatefulWidget {
  const Itempage({super.key});

  @override
  State<Itempage> createState() => _ItempageState();
}

class _ItempageState extends State<Itempage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 246, 246),
      appBar: AppBar(
        backgroundColor: AppColor.Primary,
      ),
      body: ListView(children: [
        Center(
          child: Container(
            height: 300,
            width: 300,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/burger.png'), fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(15))),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25), color: Colors.white),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      'Cheesy burger',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      '₹ 50',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 11.0, bottom: 5),
                child: Text(
                  'Fast Food',
                  style: TextStyle(color: Colors.black38),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 4.0),
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  itemSize: 18,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 13.0, top: 25, bottom: 10),
                child: Text(
                  'Description',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left:11.0, right: 10.0),
                child: const ReadMoreText(
                  'This is some long text that will be truncated. Click "Read More" to expand the text. This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text  This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text   This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text   This is some long text that will be truncated. Click "Read More" to expand the text  This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text This is some long text that will be truncated. Click "Read More" to expand the text v',
                  trimLines: 15,
                  
                  colorClickableText: Colors.blue,
                  trimMode: TrimMode.Line,
                  
                  trimCollapsedText: '...Read More',
                  trimExpandedText: ' Read Less',style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left:10.0, top:25, ),
              //   child: Text('Reviews',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              // )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: const CheckoutButton(),
    );
  }
}
