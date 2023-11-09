import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final TextEditingController controller;
  final String text;
  final bool isPass;
  final bool isNumber;

  const InputBox({
    Key? key,
    required this.controller,
    required this.text,
    required this.isPass,
    required this.isNumber,
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

  FocusNode focus = FocusNode();

  @override
  Widget build(BuildContext context) {
    final textColor = Colors.black;
    return Container(
      height: 53,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 245, 246, 250),
        borderRadius: BorderRadius.circular(10),
      ),
      child: AnimatedBuilder(
        animation: focus,
        builder: (BuildContext context, Widget? child) => TextField(
          keyboardType:
              widget.isNumber ? TextInputType.number : TextInputType.text,
          focusNode: focus,
          onTap: () =>
              {FocusScope.of(context).requestFocus(focus), setState(() {})},
          style: TextStyle(
              color: focus.hasFocus ? Color(0xff314BCE) : Colors.black),
          cursorColor: Colors.black,
          controller: widget.controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            fillColor: focus.hasFocus
                ? Color.fromARGB(22, 114, 129, 203)
                : Color.fromARGB(255, 245, 246, 250),
            contentPadding: EdgeInsets.all(16.0), // Add left padding
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
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                color: Color(0xff314BCE),
                width: 1.0,
              ),
            ),
            filled: true,
          ),
          obscureText: widget.isPass ? _obscureText : false,
        ),
      ),
    );
  }
}
