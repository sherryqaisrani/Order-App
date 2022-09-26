import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/screens/component/deliveryHistory.dart';
import 'package:order_app/screens/component/holidays.dart';
import 'package:order_app/screens/component/make_a_payment.dart';
import 'package:order_app/screens/component/shop_now.dart';
import 'package:order_app/screens/component/weekly_regular_order.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';
import 'package:order_app/widgets/containers.dart';
import 'package:order_app/widgets/favourit_list.dart';
import 'package:order_app/widgets/recommendedList.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => WeeklyRegularOrder()));
                },
                child: HomeContainer(
                    titleText: 'My Regular Orders!',
                    imageIcon: "assets/images/Walking.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MakePayment()));
                },
                child: HomeContainer(
                  titleText: 'MAKE A PAYMENT',
                  imageIcon: "assets/images/Survey.png",
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShopNow()));
                },
                child: HomeContainer(
                    titleText: 'SHOP NOW',
                    imageIcon: "assets/images/Traffic Accident.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Holidays()));
                },
                child: HomeContainer(
                    titleText: 'Holidays',
                    imageIcon: "assets/images/Hail Damage.png"),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => ShiftDetailScreen()));
                },
                child: HomeContainer(
                    titleText: 'Last Invoice',
                    imageIcon: "assets/images/shift_icon.png"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DeliveryHistory()));
                },
                child: HomeContainer(
                    titleText: 'Delivery History',
                    imageIcon: "assets/images/video_training_icon.png"),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
