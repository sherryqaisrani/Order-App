import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:order_app/utils/file_path.dart';

class RecommendedList extends StatelessWidget {
  const RecommendedList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 190,
      margin: EdgeInsets.only(
        right: 15.w,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
        borderRadius: BorderRadius.circular(
          10.r,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 192.w,
                child: Image.asset(
                  AppFiles.test2,
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Best Fruites',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  '\$30',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff659E27),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 8.w,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Rating',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xff999999),
                  ),
                ),
                Row(
                  children: List.generate(
                    5,
                    (index) => SvgPicture.asset(
                      AppFiles.star,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
