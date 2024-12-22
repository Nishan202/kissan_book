import 'package:flutter/material.dart';
import 'package:kissan_book/Screens/otp_verification_screen.dart';
import 'package:kissan_book/Utils/app_routes.dart';
import 'package:kissan_book/Utils/asset_managements.dart';
import 'package:kissan_book/Widgets/custom_button.dart';
import 'package:kissan_book/Widgets/custom_textfield.dart';

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({super.key});

  @override
  State<RegistrationScreen> createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController DOBController = TextEditingController();
  TextEditingController mobileNumController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        // height: double.infinity,
        // width: double.infinity,
        // color: Color(Colour.pageColor),
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.background_image),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 56,
              ),
              Image.asset(Assets.logo_name, height: 26, width: 125,),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Create an Account",
                style: TextStyle(fontSize: 32),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Become part of a thriving community of farmers',
                style: TextStyle(fontSize: 16),
              ),
              const Align(
                  alignment: Alignment.center, child: Text("and specialists.")),
              const SizedBox(
                height: 24,
              ),
              const Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Full Name",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                  )),
              const SizedBox(
                height: 9,
              ),
              CustomTextfield(
                  hint: "Enter your full name", controller: nameController),
              const SizedBox(
                height: 25,
              ),
              const Align(alignment: Alignment.topLeft, child: Text("DOB",style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),),
              const SizedBox(
                height: 9,
              ),
              // CustomTextfield(
              //     hint: "Select your DOB", controller: DOBController),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      // readOnly: true, // Makes the field non-editable
                      controller: DOBController,
                      decoration: const InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Select your DOB',
                        hintStyle: TextStyle(
                            color: Color(
                                Colour.placeholderColor)), // Hint text color
                        // border: InputBorder.none, // Removes underline
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                          borderSide: const BorderSide(
                              width: 1, color: Color(Colour.borderColor)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              bottomLeft: Radius.circular(40)),
                          // borderRadius: BorderRadius.only(topLeft: Radius.circular(24), bottomLeft: Radius.circular(24)),
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(Colour.borderColor),
                          ),
                        ),
                        // contentPadding: EdgeInsets.symmetric(horizontal: 20), // Adds padding inside
                      ),
                      onTap: () {
                        // Show date picker
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        );
                        // ).then((selectedDate) {
                        //   // Handle the selected date
                        //   if (selectedDate != null) {
                        //     print("Selected Date: $selectedDate");
                        //   }
                        // });
                      },
                    ),
                  ),
                  Container(
                    width: 61,
                    height: 52,
                    decoration: const BoxDecoration(
                      color:
                          Color(Colour.componentColor), // Icon background color
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    // child: const Icon(
                    //   Icons.calendar_today_outlined,
                    //   color: Colors.white, // Icon color
                    // ),
                    child: IconButton(
                      icon: const Icon(
                        Icons.calendar_today_outlined,
                        color: Colors.white, // Icon color
                      ),
                      onPressed: () {
                        // Show date picker
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(1900),
                          lastDate: DateTime.now(),
                        ).then((selectedDate) {
                          // Handle the selected date
                          if (selectedDate != null) {
                            print("Selected Date: $selectedDate");
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              const Align(
                  alignment: Alignment.topLeft, child: Text("Mobile Number", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),),),
              const SizedBox(
                height: 9,
              ),
              CustomTextfield(
                  hint: "Enter your mobile number",
                  inputType: TextInputType.number,
                  controller: mobileNumController),
              const SizedBox(
                height: 110,
              ),
              CustomButton(
                title: "Confirm",
                onClick: () {
                  // Navigator.pushNamed(context, AppRoutes.OTP_VERIFICATION_SCREEN_ROUTE , arguments: {'name' : nameController.text});
                  Navigator.pushNamed(context, AppRoutes.OTP_VERIFICATION_SCREEN_ROUTE);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Already have an account",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                          color: Color(Colour.buttonColor)),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
