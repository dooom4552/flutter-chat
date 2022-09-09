import 'package:flutter/material.dart';
import 'package:simple_chat/widgets/rightSide/bottom_right_side.dart';
import 'package:simple_chat/widgets/rightSide/middle_right_side.dart';

import 'rightSide/header_right_side.dart';

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(children: [
        const HeaderRightSide(),
        MiddleRightSide(),
        BottomRideSide()
      ]),
    );
  }
}
