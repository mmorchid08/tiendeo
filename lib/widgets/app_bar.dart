import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'tiendeo',
              style: TextStyle(
                color: Colors.red[700],
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Icon(
            Icons.fireplace_outlined,
            color: Colors.red,
            size: 24.0,
          ),
          SizedBox(
            width: 18.0,
          ),
          Icon(
            Icons.search,
            color: Colors.grey,
            size: 24.0,
          ),
          Stack(
            children: [
              Container(
                // color: Colors.blue,
                height: 45.0,
                width: 45.0,
                child: Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                  size: 24.0,
                ),
              ),
              Positioned(
                right: 6.0,
                child: Container(
                  child: Center(child: Text('1',style: TextStyle(fontSize: 13.0),)),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  height: 18.0,
                  width: 18.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
