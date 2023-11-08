
import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final bool isPass;
  final int id;

  const InputBox({
    Key? key,
    required this.id,
    required this.controller,
    required this.text,
    required this.isPass,
  }) : super(key: key);

  @override
  _InputBoxState createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {
  bool _obscureText = true; // Local state to handle the visibility of the text
  Color textColor = Colors.black;
  int _selectedTextField = 0; // Track the currently selected TextField

  void _handleTextFieldTap(int textFieldId) {
    setState(() {
      _selectedTextField = textFieldId; // Update the selected TextField
    });
  }

  @override
  Widget build(BuildContext context) {
    final isSelected = _selectedTextField == widget.id;
    final textColor = isSelected ? Color(0xff314BCE) : Colors.black;
    return Container(
      // padding: EdgeInsets.all(10),
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 245, 246, 250),
          borderRadius: BorderRadius.circular(5)),
      child: TextField(
        onTap: () => _handleTextFieldTap(widget.id),
        onTapOutside: (event) => setState(() => _selectedTextField = 0),
        style: TextStyle(color: textColor),
        cursorColor: Colors.black,
        controller: widget.controller,
        decoration: InputDecoration(
          // fillColor: textColor,
          contentPadding: EdgeInsets.all(16.0), // Add left padding
          // focusColor: Color(0xff314BCE),
          suffixIcon: widget.isPass
              ? IconButton(
                  icon: _obscureText
                      ? Icon(
                          Icons.visibility_off,
                          color: Color(0xff7F8192),
                        )
                      : Icon(
                          Icons.visibility,
                          color: Colors.black,
                        ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; // Toggle local state
                    });
                  },
                )
              : null,
          hintText: widget.text,
          border: InputBorder.none,
          // focusedTextColour: Color(0xff314BCE),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff314BCE),
              width: 1.0,
            ), // Set focused border color and width
          ),
        ),
        obscureText: widget.isPass ? _obscureText : false,
      ),
    );
  }
}
