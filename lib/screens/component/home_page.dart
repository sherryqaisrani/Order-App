import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Stack(
              children: [
                Container(
                  height: 187.h,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(
                      30.r,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 110.h),
                  child: Text(
                    'Delicious friute fastely 10% off',
                    style: TextStyle(fontSize: 14.sp, color: Colors.white),
                  ),
                ),
                Container(
                  height: 48.h,
                  width: 141.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 4.w,
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.circular(
                      50.r,
                    ),
                  ),
                  child: Text(
                    'OrderNow',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 48.h,
                width: 300.w,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 1.0,
                    color: CustomTheme.borderColor,
                  ),
                  borderRadius: BorderRadius.circular(
                    50.r,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'New Items',
                style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                width: 139.w,
                height: 42.h,
                decoration: BoxDecoration(
                  color: Color(0xff659E27),
                  borderRadius: BorderRadius.circular(
                    30.r,
                  ),
                ),
                child: Text(
                  'Fress fruite',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 150.h,
            width: 121.w,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
                color: CustomTheme.borderColor,
              ),
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: Image.asset(
                        AppFiles.text,
                      ),
                    ),
                    Container(
                      height: 36.h,
                      width: 36.w,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                        ),
                        shape: BoxShape.circle,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(4),
                        child: SvgPicture.asset(
                          AppFiles.heart,
                        ),
                      ),
                    ),
                  ],
                ),
                Text(
                  'Oranges',
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'Best verity',
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black.withOpacity(
                      1,
                    ),
                  ),
                ),
                RichText(
                  text: TextSpan(
                      text: '\$20,0',
                      style: TextStyle(
                        fontSize: 14.sp,
                        color: const Color(
                          0xff659E27,
                        ),
                      ),
                      children: [
                        TextSpan(
                            text: 'price',
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: Colors.black.withOpacity(
                                1,
                              ),
                            ))
                      ]),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recomended items',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'see more',
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Color(
                    0xff659E27,
                  ),
                ),
              )
            ],
          ),
          Container(
            height: 110.h,
            width: 192.w,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1,
              ),
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      AppFiles.test2,
                    ),
                  ],
                ),
                Row(
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
                Row(
                  children: [
                    Text(
                      'Rate this items',
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Color(0xff999999),
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                      height: 18.h,
                      child: SvgPicture.asset(
                        AppFiles.star,
                      ),
                    ),
                    // ListView.builder(
                    //   scrollDirection: Axis.horizontal,
                    //   itemCount: 1,
                    //   itemBuilder: (context, index) =>
                    // ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
