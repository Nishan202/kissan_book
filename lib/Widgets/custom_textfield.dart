import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/asset_managements.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelText;
  final String hint;
  final int? minimuLine;
  final int? maximumLine;
  final int? maximumLength;
  final TextEditingController controller;
  final TextInputType inputType;
  final bool isobscureText;
  final String? obscureCharacter;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextAlign textAlignment;
  final Color? hintColor;
  final Function()? onClick;

  const CustomTextfield(
      {super.key,
      this.labelText,
      required this.hint,
      this.minimuLine,
      this.maximumLine,
      this.inputType = TextInputType.text,
      this.isobscureText = false,
      this.obscureCharacter = "*",
      this.prefixIcon,
      this.suffixIcon,
      required this.controller,
      this.textAlignment = TextAlign.start,
      this.maximumLength,
      this.hintColor,
      this.onClick});

  @override
  Widget build(BuildContext context) {
    return TextField(
      minLines: minimuLine,
      maxLines: maximumLine,
      maxLength: maximumLength,
      textAlign: textAlignment,
      keyboardType: inputType,
      obscureText: isobscureText,
      obscuringCharacter: obscureCharacter!,
      controller: controller,
      decoration: InputDecoration(
        // label: Text(labelText!),
        fillColor: Colors.white,
        filled: true,
        hintText: hint,
        hintStyle: TextStyle(color: Color(Colour.placeholderColor)),
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
          borderSide:
              const BorderSide(width: 1, color: Color(Colour.borderColor)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40),
          // borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
          borderSide: const BorderSide(
            width: 1,
            color: Color(Colour.borderColor),
          ),
        ),
      ),
      onTap: onClick,
    );
  }
}
