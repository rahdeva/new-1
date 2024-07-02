import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tembang_bali/feature/introduction/introduction_controller.dart';
import '/utills/widget/button/primary_button.dart';
import '/resources/resources.dart';

class IntroductionPage extends StatelessWidget {
  const IntroductionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<IntroductionController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(height: 40),
                Column(
                  children: [
                    Text(
                      "Introduction",
                      style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        color: AppColors.blue,
                        fontWeight: FontWeight.w700
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Silahkan login untuk melanjutkan",
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: AppColors.black,
                        fontWeight: FontWeight.w300
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                PrimaryButtonWidget(
                  buttonText: "LOGIN", 
                  onPressed: () async {
                    // if (
                    //   controller.formKey.currentState != null &&
                    //   controller.formKey.currentState!.saveAndValidate()
                    // ){
                    //   controller.signInWithEmailAndPassword(
                    //     controller.formKey.currentState!.fields['username']!.value,
                    //     controller.formKey.currentState!.fields['password']!.value,
                    //   );
                    // }
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

