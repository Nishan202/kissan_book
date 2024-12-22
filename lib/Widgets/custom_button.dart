import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/asset_managements.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final bool loading;
  final Function() onClick;
  const CustomButton({super.key, required this.title, this.loading=false, required this.onClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 56,
        width: 366,
        decoration: BoxDecoration(
          color: const Color(Colour.buttonColor),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Center(child: loading ? const CircularProgressIndicator(strokeWidth: 3, color: Colors.white,) : Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),),
      ),
    );
  }
}