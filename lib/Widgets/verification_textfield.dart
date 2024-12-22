import 'package:flutter/material.dart';

class VerificationTextfield extends StatelessWidget {
  // final focus = FocusNode();
  final String hint;
  final TextInputType inputType;
  final bool isobscureText;
  final int? maximumLine;
  // final int? maximumLength;
  final TextAlign textAlignment;
  final String? obscureCharacter;
  final TextEditingController controller;
  const VerificationTextfield({super.key, required this.hint, this.inputType=TextInputType.text, this.isobscureText = false, this.obscureCharacter = "*", required this.controller, this.maximumLine, this.textAlignment=TextAlign.center,});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      width: 80,
      child: TextField(
        keyboardType: inputType,
        obscureText: isobscureText,
        // maxLength: 1,
        textAlign: TextAlign.center,
        controller: controller,
        maxLines: maximumLine,
        // autofocus: true,
        // focusNode: focus,
        // textInputAction: TextInputAction.next,
        obscuringCharacter: obscureCharacter!,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: Color(0xffB3B3B3), fontSize: 16, fontWeight: FontWeight.w400),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(width: 1, color: Color(0xffFFB497)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(40),
            borderSide: const BorderSide(
              width: 1,
              color: Color(0xffFFB497),
            ),
          ),
        ),
      ),
    );
  }
}