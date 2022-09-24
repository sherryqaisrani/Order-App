import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/screens/home_screen.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';
import 'package:order_app/widgets/input_field.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 70.h,
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
              height: 24.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'SignUp',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainGreenColor,
                  ),
                ),
                SizedBox(
                  width: 6.w,
                ),
                Text(
                  'Page',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w800,
                    color: CustomTheme.mainOrangeColor,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40.h,
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
                    decoration: getInputDecoration(hintText: 'User Name'),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration: getInputDecoration(hintText: 'Password'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    obscureText: true,
                    decoration:
                        getInputDecoration(hintText: 'Confirm Password'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Email Address'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    decoration:
                        getInputDecoration(hintText: 'Confirm Email Address'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'First Name'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Last Name'),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  const Divider(
                    height: 1,
                    thickness: 2,
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Home Name'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Home Number'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Post Code'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Street'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Aera'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Town'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: getInputDecoration(hintText: 'Phone Number'),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomeScreen(),
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
                        'Sign Up',
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
