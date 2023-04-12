import 'package:flutter/material.dart';

class Boxx extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 80, 10, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 100.0,
            width: 200.0,
            color: Colors.red,
          ),
          Container(
            height: 42.0,
            width: 42.0,
            color: Colors.grey,
          )
        ],
      ),
    );
  }
}
