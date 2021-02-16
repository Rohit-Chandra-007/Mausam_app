import 'package:flutter/material.dart';

class TabLabelWidget extends StatelessWidget {
  final String tabLabel;

  const TabLabelWidget({Key key, this.tabLabel}) : super(key: key);

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
