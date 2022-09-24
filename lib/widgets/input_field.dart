import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

InputDecoration getInputDecoration({required String hintText}) {
  return InputDecoration(
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: BorderSide(
        color: Colors.black.withOpacity(
          0.1,
        ),
        style: BorderStyle.solid,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(
        10.r,
      ),
      borderSide: BorderSide(
        color: Colors.black.withOpacity(
          0.1,
        ),
        style: BorderStyle.solid,
      ),
    ),
    contentPadding: EdgeInsets.symmetric(
      vertical: 16.h,
      horizontal: 16.w,
    ),
    hintText: hintText,
    hintStyle: TextStyle(
      fontSize: 16.sp,
      fontWeight: FontWeight.w400,
    ),
  );
}
