import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:order_app/screens/signup_screen.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';
import 'package:order_app/widgets/input_field.dart';

class ExistingCustomer extends StatelessWidget {
  const ExistingCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 110.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: SizedBox(
                height: 76.h,
                child: Image.asset(
                  AppFiles.logoPath,
                ),
              ),
            ),
            SizedBox(
              height: 75.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(
                      hintText: 'Customer Number',
                    ),
                  ),
                  SizedBox(
                    height: 70.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        elevation: 20,
                        padding: EdgeInsets.symmetric(
                          vertical: 16.h,
                        ),
                        primary: CustomTheme.mainGreenColor,
                      ),
                      child: Text(
                        'Next',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
