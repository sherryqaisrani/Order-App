import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';

class FavouritList extends StatelessWidget {
  const FavouritList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 15.w,
      ),
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                width: 121.w,
                child: Image.asset(
                  AppFiles.text,
                ),
              ),
              // Container(
              //   child:
              // ),
              Padding(
                padding: EdgeInsets.only(
                  top: 0.h,
                  left: 70,
                ),
                child: Container(
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
              ),
            ],
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            'Oranges',
            style: TextStyle(
              fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 2.h,
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
          SizedBox(
            height: 2.h,
          ),
          RichText(
            text: TextSpan(
                text: '\$20,0',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w600,
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
    );
  }
}
