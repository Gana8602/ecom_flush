import 'package:flutter/Material.dart';
import 'package:flutter/src/widgets/framework.dart';

class SearchBarr extends StatelessWidget {
  const SearchBarr({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:10.0, top: 10.0, bottom: 4.0, right:10.0),
      child: Container(
        height: 45,
        width: 250,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Color.fromARGB(179, 230, 230, 230),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Search Here',
                style: TextStyle(fontSize: 15, color: Colors.blueGrey),
              ),
            ),
            Spacer(),
            Icon(Icons.search_outlined)
          ],
        ),
      ),
    );
  }
}
