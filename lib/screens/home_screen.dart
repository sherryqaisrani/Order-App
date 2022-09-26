import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:order_app/screens/component/home_page.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  int currentIndex = 0;

  List screens = [const HomePageScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppFiles.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                AppFiles.location,
              ),
              label: 'Location'),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.person,
              // color: Colors.black,
            ),
          )
        ],
      ),
      body: screens[currentIndex],
    );
  }
}
