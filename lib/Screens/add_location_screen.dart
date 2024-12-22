import 'package:flutter/material.dart';
import 'package:kissan_book/Screens/category_screen.dart';
import 'package:kissan_book/Utils/app_routes.dart';
import 'package:kissan_book/Utils/asset_managements.dart';
import 'package:kissan_book/Widgets/custom_button.dart';
import 'package:kissan_book/Widgets/custom_textfield.dart';

class AddLocationScreen extends StatefulWidget {
  const AddLocationScreen({super.key});

  @override
  State<AddLocationScreen> createState() => _AddLocationScreenState();
}

class _AddLocationScreenState extends State<AddLocationScreen> {
  TextEditingController addressController = TextEditingController();
  TextEditingController stateController = TextEditingController();
  TextEditingController cityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(Colour.pageColor),
        centerTitle: true,
        title: Text('Add Location', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(Assets.background_image), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Text(
              'Add Location Manually',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 24,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Address',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(
              height: 9,
            ),
            CustomTextfield(
                hint: "Enter your location manually",
                controller: addressController),
            const SizedBox(
              height: 32,
            ),
            const Align(alignment: Alignment.topLeft, child: Text("State")),
            const SizedBox(
              height: 9,
            ),
            CustomTextfield(
                hint: "Select your state", controller: stateController),
            const SizedBox(
              height: 32,
            ),
            const Align(alignment: Alignment.topLeft, child: Text("City")),
            const SizedBox(
              height: 9,
            ),
            CustomTextfield(
                hint: "Select your city", controller: cityController),
            const SizedBox(height: 150),
            const Text(
              'Help us personalize your feed with relevant posts',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "and updates based on your location.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
            ),
            const SizedBox(
              height: 48,
            ),
            CustomButton(
                title: "Save",
                onClick: () {
                  Navigator.pushNamed(context, AppRoutes.CATEGORY_SCREEN_ROUTE);
                })
          ],
        ),
      ),
    );
  }
}
