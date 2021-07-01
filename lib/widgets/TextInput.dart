import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TextInput extends StatefulWidget {
  final String? hint;
  final bool? obscure;
  final TextEditingController? controller;
  final IconData? suffixIcon;

  const TextInput(
      {Key? key,
      this.obscure = false,
      this.hint,
      this.controller,
      this.suffixIcon})
      : super(key: key);

  @override
  _TextInputState createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  bool hasError = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: hasError ? Colors.red : Colors.white,
          width: 1,
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        obscureText: widget.obscure!,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: widget.hint!,
          fillColor: Colors.white,
          hintStyle: TextStyle(
            color: Colors.grey.shade500,
          ),
          suffixIcon: widget.suffixIcon != null
              ? Icon(
                  widget.suffixIcon,
                  size: 16,
                )
              : null,
        ),
        style: TextStyle(
          color: Colors.grey.shade700,
        ),
        validator: (value) {
          setState(() {
            hasError = false;
          });

          if (value == null || value.isEmpty) {
            setState(() {
              hasError = true;
            });
            return null;
          }

          return null;
        },
      ),
    );
  }
}
