import 'package:flutter/material.dart';

class MinMaxTempWidget extends StatelessWidget {
  const MinMaxTempWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('max'), Text('41°')],
          ),
        ),
        Container(height: 30, child: VerticalDivider(color: Colors.red)),
        Container(
          padding: EdgeInsets.all(8),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('min'), Text('17°')],
          ),
        ),
      ],
    );
  }
}
