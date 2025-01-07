import 'package:flutter/material.dart';

class CustomRadiobuttonGroup extends StatelessWidget {
  String title;
  String subTitle;
  final groupValue;
  final value;
  Function(dynamic) onChanged;
  CustomRadiobuttonGroup(
      {super.key,
      required this.groupValue,
      required this.value,
      required this.title,
      this.subTitle = '',
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    String? selectedOption;
    return GestureDetector(
      onTap: () => onChanged(value),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Color(0xffFFB497), width: 1)
        ),
        child: ListTile(
          // minVerticalPadding: 0,
          // dense: true,
          titleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),
          subtitleTextStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700,),
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
          // title: Row(
          //   children: [
          //     Text(title),
          //     IconButton(onPressed: (){}, icon: Icon(Icons.announcement_rounded))
          //   ],
          // ),
          subtitle: Row(
            children: [
              Text(subTitle),
              IconButton(onPressed: (){}, icon: Icon(Icons.info_outline_rounded, size: 17,))
            ],
          ),
          // subtitle: Text(subTitle),
          trailing: _customRadioButton(context),
        ),
      ),
    );
    // return Container(
    //   margin: const EdgeInsets.only(bottom: 12.0),
    //   decoration: BoxDecoration(
    //     border: Border.all(color: Colors.orangeAccent),
    //     borderRadius: BorderRadius.circular(12),
    //   ),
    //   child: RadioListTile<String>(
    //     value: value,
    //     groupValue: selectedOption,
    //     // onChanged: (val) => onChanged(value),
    //     onChanged: (val){},
    //     title: Row(
    //       children: [
    //         Container(
    //         height: 60,
    //         width: 60,
    //         decoration: const BoxDecoration(
    //           borderRadius: BorderRadius.all(Radius.circular(10)),
    //           image: DecorationImage(
    //             image: NetworkImage(
    //                 'https://goldenglobes.com/wp-content/uploads/2023/10/17-tomcruiseag.jpg?w=600?w=600'),
    //             fit: BoxFit.cover,
    //           ),
    //         ),
    //       ),
    //         SizedBox(width: 12),
    //         Expanded(
    //           child: Text(
    //             title,
    //             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
    //           ),
    //         ),
    //         Icon(Icons.info_outline, color: Colors.orangeAccent),
    //       ],
    //     ),
    //     activeColor: Colors.orangeAccent,
    //   ),
    // );
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
