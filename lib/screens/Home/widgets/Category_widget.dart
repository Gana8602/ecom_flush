import 'package:ecom/screens/Products/Product_page.dart';
import 'package:flutter/Material.dart';

import '../../../utils/Colors.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key});

  @override
  Widget build(BuildContext context) {
   final List<String> images =[
'assets/cat3.png',
'assets/cat9.png',
'assets/cat11.png',
'assets/cat12.png',
'assets/burger.png',
    ];
    final List<String> Texts =[
      'Cake & Milk',
      'Organic kiwi',
      'Peach',
      'Red Apple',
      'Snack',
    ];
    final List<String> ItemCounts =[
'25 items',
'15 items',
'30 items',
'65 items',
'56 items',

    ];
    final List<Color> colours =[
AppColor.LLB,
AppColor.LPP,
AppColor.LightGre,
AppColor.LlGG,
AppColor.Lpink,
    ];
    
    return  GestureDetector(
      onTap: (){Navigator.push(
          context, MaterialPageRoute(builder: (context) => const ProductPage()));},
      child: Container(
            height: 150,
            color: Colors.white,
            child: ListView.builder(
           itemCount: 5,
              scrollDirection: Axis.horizontal,
              itemBuilder: (contex, index){
                
              return Padding(padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
    
                
                Container(
                  height: 120,
                  width: 120,
                 decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: colours[index],
                 ),
                 
                  child: Column(
                    children: [
                      Container(
                        height: 70,
                        width: 70,
                         decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(images[index], ),fit: BoxFit.cover)
                      ),
                      ),
                    
                  
                   Text(Texts[index],style: const TextStyle(fontWeight: FontWeight.bold),),
                  
                   Text(ItemCounts[index],style: const TextStyle(color: Colors.grey),),
                 ], ),),
              ],),);
            }),
              ),
    );
      
  
  }
}