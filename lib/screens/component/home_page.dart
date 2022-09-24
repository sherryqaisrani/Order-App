import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';
import 'package:order_app/widgets/favourit_list.dart';
import 'package:order_app/widgets/recommendedList.dart';

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
                    border: Border.all(
                      width: 1,
                      color: CustomTheme.borderColor,
                    ),
                    image: const DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://www.badairies.co.uk/assets/products/Cotteswold-IMG_6391.jpg',
                      ),
                    ),
                    borderRadius: BorderRadius.circular(
                      30.r,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 5.h,
                    left: 12,
                  ),
                  child: Text(
                    'Delicious friute fastely 10% off',
                    style: TextStyle(
                      fontSize: 32.sp,
                      color: Colors.black,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 121.h,
                    left: 170.w,
                  ),
                  child: Container(
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
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 7.h,
                        horizontal: 12.w,
                      ),
                      child: Text(
                        'OrderNow',
                        style: TextStyle(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 24.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 12.w,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 48.h,
                      width: 270.w,
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
                SizedBox(
                  height: 24.h,
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
                      icon: const Icon(
                        Icons.arrow_forward,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 42.h,
                  child: ListView.builder(
                      clipBehavior: Clip.hardEdge,
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            left: 15.w,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xff659E27),
                            borderRadius: BorderRadius.circular(
                              30.r,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 15.w,
                              vertical: 6.h,
                            ),
                            child: Text(
                              'Fress fruite',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      clipBehavior: Clip.hardEdge,
                      itemCount: 5,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        return FavouritList();
                      }),
                ),
                SizedBox(
                  height: 24.h,
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
                        color: const Color(
                          0xff659E27,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                SizedBox(
                  width: double.maxFinite,
                  height: 110,
                  child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    clipBehavior: Clip.hardEdge,
                    shrinkWrap: true,
                    itemBuilder: (context, index) => RecommendedList(),
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
