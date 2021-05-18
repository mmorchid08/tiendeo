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
          Text(
            'tiendeo',
            style: TextStyle(
              color: Colors.red[700],
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 150.0,
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const <Widget>[
                  Icon(
                    Icons.fireplace_outlined,
                    color: Colors.red,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.more_vert,
                    color: Colors.grey,
                    size: 24.0,
                  ),
                ],
              ),
              height: 50.0,
            ),
          ),
        ],
      ),
    );
  }
}
