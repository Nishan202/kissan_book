import 'package:flutter/material.dart';

class CustomRadiobuttonGroup extends StatelessWidget {
  String title;
  final groupValue;
  final value;
  Function(dynamic) onChanged;
  CustomRadiobuttonGroup(
      {super.key,
      required this.groupValue,
      required this.value,
      required this.title,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color(0xffFFB497), width: 1)
        ),
        child: ListTile(
          titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),
          textColor: Color(0xff5E3D34),
          leading: Container(
            height: 60,
            width: 60,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(
                image: NetworkImage(
                    'https://goldenglobes.com/wp-content/uploads/2023/10/17-tomcruiseag.jpg?w=600?w=600'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(title),
          contentPadding: const EdgeInsets.all(10),
          trailing: _customRadioButton(context),
        ),
      ),
    );
  }

  Widget _customRadioButton(context) {
    bool isSelected = value == groupValue;
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
          color: isSelected ? Color(0xffFF671F) : Colors.transparent,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color(0xffFF671F),
          )),
      child: Center(
          child: isSelected
              ? Icon(
                  Icons.check,
                  size: 20,
                  color: Colors.white,
                )
              : SizedBox.shrink()),
    );
  }
}
