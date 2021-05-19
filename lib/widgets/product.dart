import 'package:flutter/material.dart';
import 'package:tiendo_ui/features/home/data/models/store_model.dart';

class ProductCard extends StatefulWidget {
  StoreModel storeModel;

  ProductCard({
    required this.storeModel
    });
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {

  @override
  Widget build(BuildContext context) {
    StoreModel storeModelSaver = widget.storeModel;
    return Container(
      height: 220.0,
      width: 160.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.grey.shade300, spreadRadius: 1),
        ],
      ),
      child: Column(
        children: [
          Container(
            height: 160.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(storeModelSaver.imageUrl)),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(5.0),
                topLeft: Radius.circular(5.0)
              ),
              color: Colors.redAccent,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storeModelSaver.nameStore,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      storeModelSaver.description,
                      style: TextStyle(
                        color: Colors.grey.shade700,
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
                  size: 25.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
