

import 'package:flutter/material.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => setState(() {
        isChecked = !isChecked;
      }),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
          color: isChecked ? Color.fromARGB(79, 49, 75, 206) : Colors.white,
          borderRadius: BorderRadius.circular(5.0),
          border: Border.all(color: Color(0xff314BCE), width: 1.0),
        ),
      ),
    );
  }
}
