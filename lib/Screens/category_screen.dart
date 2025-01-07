import 'package:flutter/material.dart';
import 'package:kissan_book/Utils/asset_managements.dart';
import 'package:kissan_book/Widgets/custom_button.dart';
import 'package:kissan_book/Widgets/custom_radiobutton_group.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.background_image), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Image.asset(
              Assets.logo_name,
              height: 26,
              width: 125,
            ),
            const SizedBox(
              height: 24,
            ),
            const Text(
              "Select Your Category",
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Select whether you're a farmer, agriculturist or",
              style: TextStyle(fontSize: 16),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text("business man to personalize your experience and", style: TextStyle(fontSize: 16),),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text("connect with the right community.", style: TextStyle(fontSize: 16),),
            ),
            const SizedBox(
              height: 24,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Select Your Role to Get Started!",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomRadiobuttonGroup(
              groupValue: _value,
              value: 1,
              title: 'Farmer',
              onChanged: (value) {
                setState(
                  () {
                    _value = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomRadiobuttonGroup(
              groupValue: _value,
              value: 2,
              title: 'Agriculturist',
              onChanged: (value) {
                setState(
                  () {
                    _value = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomRadiobuttonGroup(
              groupValue: _value,
              value: 3,
              title: 'Want to Promote your',
              subTitle: 'Business',
              onChanged: (value) {
                setState(
                  () {
                    _value = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 16,
            ),
            CustomRadiobuttonGroup(
              groupValue: _value,
              value: 4,
              title: 'Government/',
              subTitle: 'Educational Institute',
              onChanged: (value) {
                setState(
                  () {
                    _value = value;
                  },
                );
              },
            ),
            const SizedBox(
              height: 50,
            ),
            CustomButton(title: 'Next', onClick: (){})
          ],
        ),
      ),
    );
  }
}
