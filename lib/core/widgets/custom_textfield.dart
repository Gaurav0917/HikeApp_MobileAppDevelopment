import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final int maxLines;
  final IconData? icon;
  final bool obscureText;
  final bool showSuffixIcon;

  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.maxLines = 1,
    this.icon,
    this.obscureText = false,
    this.showSuffixIcon = false,
  }) : super(key: key);

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText && _obscureText,
      decoration: InputDecoration(
        filled: true,
        fillColor: const Color(0xFFe9efff),
        hintText: widget.hintText,
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(95, 164, 65, 65),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        prefixIcon: widget.icon != null
            ? Icon(widget.icon, color: const Color.fromARGB(255, 64, 233, 84))
            : null,
        suffixIcon: widget.showSuffixIcon
            ? IconButton(
                icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _obscureText = !_obscureText;
                  });
                },
              )
            : null,
      ),
      validator: (val) {
        if (val == null || val.isEmpty) {
          return 'Enter your ${widget.hintText}';
        }
        return null;
      },
      maxLines: widget.maxLines,
    );
  }
}
