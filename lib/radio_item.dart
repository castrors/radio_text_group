import 'package:flutter/material.dart';
import 'package:radio_edit_text/counter_data.dart';

class RadioItem extends StatelessWidget {
  final bool isSelected;
  final String value;

  RadioItem({this.isSelected, this.value});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isSelected ? Colors.blue : Colors.grey,
      child: Center(
        child: Text(
          value,
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
