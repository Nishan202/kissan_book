import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/asset_managements.dart';

class CustomAlertDialogbox extends StatelessWidget {
  String title;
  String buttonText;
  String buttonTextDown;
  final bool loading;
  VoidCallback onClickBtn;
  VoidCallback onClickBtnDown;
  
  CustomAlertDialogbox({required this.title, 
  required this.buttonText, 
  required this.buttonTextDown, 
  this.loading=false, 
  required this.onClickBtn, 
  required this.onClickBtnDown});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      // insetPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Container(
        height: 450,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 40,),
            Image.asset(Assets.location_dialog_box, width: 151, height: 145,),
            const SizedBox(height: 20,),
            Text(title, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w700, color: Color(Colour.buttonColor)),),
            const SizedBox(height: 20,),
            _buttonDesignUp(context, btnText: buttonText, onClick: onClickBtn),
            const SizedBox(height: 15,),
            _buttonDesignDown(context, btnText: buttonTextDown, onClick: onClickBtnDown)
          ],
        ),
      ),
    );
  }

  Widget _buttonDesignDown(context , {required btnText, required onClick, loading=false}){
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 56,
        width: 266,
        decoration: BoxDecoration(
          color: const Color(Colour.buttonColor),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Center(child: loading ? const CircularProgressIndicator(strokeWidth: 3, color: Colors.white,) : Text(btnText, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),),),
      ),
    );
  }

  Widget _buttonDesignUp(context, {required btnText, required onClick, loading=false}){
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 56,
        width: 266,
        decoration: BoxDecoration(
          // color: const Color(Colour.buttonColor),
          border: Border.all(color: const Color(Colour.buttonColor)),
          borderRadius: BorderRadius.circular(50)
        ),
        child: Center(child: loading ? const CircularProgressIndicator(strokeWidth: 3, color: Colors.white,) : Text(btnText, style: const TextStyle(color: Color(Colour.buttonColor), fontWeight: FontWeight.bold, fontSize: 16,),),),
      ),
    );
  }
}