import 'package:flutter/material.dart';
import 'package:kissan_book/Screens/add_location_screen.dart';
import 'package:kissan_book/Utils/app_routes.dart';
import 'package:kissan_book/Utils/asset_managements.dart';
import 'package:kissan_book/Widgets/custom_alert_dialogBox.dart';
import 'package:kissan_book/Widgets/custom_button.dart';
import 'package:kissan_book/Widgets/verification_textfield.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  TextEditingController num1 = TextEditingController();
  TextEditingController num2 = TextEditingController();
  TextEditingController num3 = TextEditingController();
  TextEditingController num4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // final routeArgs = ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    // final name = routeArgs['name'].toString();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(Assets.background_image), fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              const Text("Verify It's you", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),),
              const SizedBox(
                height: 211,
              ),
              Text(
                "Verify Your Number",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "We have sent a 4-digit verification code to your",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const Align(
                alignment: Alignment.center,
                child: const Text(
                  "registered phone number. Please enter it below to",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const Align(
                alignment: Alignment.center,
                child: const Text(
                  "verify your number.",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  VerificationTextfield(hint: "X", inputType: TextInputType.number, controller: num1),
                  VerificationTextfield(hint: "X", controller: num2, inputType: TextInputType.number),
                  VerificationTextfield(hint: "X", controller: num3, inputType: TextInputType.number),
                  VerificationTextfield(hint: "X", controller: num4, inputType: TextInputType.number),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "The code will expire in ",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    "00:11",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(Colour.buttonColor)),
                  ),
                ],
              ),
              const SizedBox(
                height: 215,
              ),
              CustomButton(
                title: "Verify Now",
                onClick: () {
                  // Navigator.pushNamed(context, AppRoutes.ADD_LOCATION_SCREEN_ROUTE);
                  showDialog(
                    context: context, builder: (context) => CustomAlertDialogbox(
                      title: 'Location Selection', 
                  buttonText: 'Set Location Manually', 
                  buttonTextDown: 'abc', 
                  onClickBtnDown: (){}, 
                  onClickBtn: () => Navigator.pushReplacementNamed(context, AppRoutes.ADD_LOCATION_SCREEN_ROUTE),),);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Didn’t get any code yet.",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Resend",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Color(Colour.buttonColor),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
