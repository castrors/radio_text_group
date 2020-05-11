import 'package:flutter/material.dart';
import 'package:radio_edit_text/counter_data.dart';
import 'package:radio_edit_text/radio_item.dart';

class RadioTextGroup extends StatefulWidget {
  @override
  _RadioEditTextState createState() => _RadioEditTextState();
}

class _RadioEditTextState extends State<RadioTextGroup> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 5,
      children: List.generate(
        10,
        (index) {
          return GestureDetector(
              onTap: () {
                setState(() {
                  CounterData.selectedIndex = index;
                });
              },
              child: RadioItem(
                isSelected: CounterData.isSelected(index),
                value: CounterData.counterList[index].toString(),
              ));
        },
      ),
    );
  }

  void incrementSelected() {
    print('incrementar');
  }
}
