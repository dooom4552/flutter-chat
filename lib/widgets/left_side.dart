import 'package:flutter/material.dart';

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 238,
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.blueGrey,
            border: Border(
              top: BorderSide.none,
              left: BorderSide.none,
              right: BorderSide(color: Colors.red, width: 1.0),
              bottom: BorderSide.none,
            )),
      ),
    );
  }
}
