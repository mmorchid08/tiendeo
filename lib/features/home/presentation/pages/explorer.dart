import 'package:flutter/material.dart';
import 'package:tiendo_ui/widgets/product.dart';

class EplorerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child:ProductCard(),
    );
  }
}