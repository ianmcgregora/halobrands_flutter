import 'package:flutter/material.dart';
import 'brand.dart';
import 'BrandCard.dart';
import 'firestore/firebase.dart';

void main() => runApp(
      MaterialApp(home: Home()),
    );

class Home extends StatelessWidget {
  Firebase fb = Firebase();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(color: Colors.white),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 36,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: Colors.lightGreen[100],
                ),
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(top: 60),
                padding: const EdgeInsets.only(left: 10),
                child: const Text(
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    'Search here'),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: Container(
                height: MediaQuery.of(context).size.height - 150,
                child: FutureBuilder(builder: fb.getBrands(), ListView(
                    children:
                        fb.getBrands().map((brand) => BrandCard(brand)).toList(),
                  ),
                )),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

List<Brand> brands = [
  Brand(name: 'Naked and Famous Denim', category: 'Apparel'),
  Brand(name: 'Miansai', category: 'Accessories'),
  Brand(name: 'Fire-King Japan', category: 'Homeware'),
  Brand(name: 'Asket', category: 'Apparel'),
  Brand(name: 'Satchel & Paige', category: 'Accessories'),
  Brand(name: 'Hestra', category: 'Accessories'),
  Brand(name: 'Tesla', category: 'Cars'),
];
