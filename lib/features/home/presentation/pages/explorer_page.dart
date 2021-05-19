import 'package:flutter/material.dart';
import 'package:tiendo_ui/core/constants/store_list.dart';
import 'package:tiendo_ui/features/home/data/models/store_model.dart';
import 'package:tiendo_ui/widgets/product.dart';

class EplorerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  int storeIndex = -2;
    return ListView.builder(
        itemCount: storeList.length % 2 == 0
            ? storeList.length ~/ 2
            : storeList.length ~/ 2 + 1,
        itemBuilder: (BuildContext context, int index) {
          storeIndex += 2;
          return Container(
            padding: const EdgeInsets.only(
              top: 10.0,
              left: 13.0,
              right: 13.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ProductCard(
                  storeModel: storeList[storeIndex],
                ),
                if (storeIndex + 1 < storeList.length)
                  ProductCard(
                    storeModel: storeList[storeIndex + 1],
                  ),
              ],
            ),
          );
        });
  }
}
