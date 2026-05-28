import 'package:flutter/material.dart';

class TabLabelWidget extends StatelessWidget {
  final String tabLabel;

  const TabLabelWidget({super.key, required this.tabLabel});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Align(
        alignment: Alignment.center,
        child: Text(tabLabel),
      ),
    );
  }
}
