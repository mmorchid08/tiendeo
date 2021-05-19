import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            height: 150.0,
            width: 180.0,
            child: Image.network('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',height: 180.0,),
          ),
          Container(
            height: 50.0,
            width: 180.0,
            color: Colors.white,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Carrefour',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height:5.0,
                      ),
                       Text(
                        'Valid 20 more days',
                        style: TextStyle(
                          color: Colors.grey[400],
                          fontSize: 11.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Container(
                  child: Icon(
                    Icons.star_border,
                    color: Colors.grey[400],
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
