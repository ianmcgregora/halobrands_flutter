import 'package:flutter/material.dart';

import 'brand.dart';

class BrandCard extends StatelessWidget {
  final Brand brand;
  const BrandCard(this.brand);

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 175,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.lightGreen[200],
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10))),
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: const EdgeInsets.only(bottom: 5, top: 5, left: 5),
            width: 175,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.lightGreen[100],
                borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomRight: Radius.circular(10))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                      style: TextStyle(
                          fontSize: 14,
                          letterSpacing: 0.5,
                          color: Colors.grey[800]),
                      '${brand.name}'),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                      style: TextStyle(fontSize: 10, color: Colors.grey[800]),
                      '${brand.category}'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
