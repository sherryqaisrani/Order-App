import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:order_app/screens/customer_type.dart';
import 'package:order_app/screens/signup_screen.dart';
import 'package:order_app/utils/colors.dart';
import 'package:order_app/utils/file_path.dart';
import 'package:order_app/widgets/input_field.dart';

class SelectPage extends StatefulWidget {
  SelectPage({super.key});

  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  int? selectedValueIndex;
  List<String> countriesList = [
    'London',
    'Coventry',
    'Cardiff',
    'Peterborough',
    'Norfolk',
  ];

  List<String> venderList = [
    'London CJ foods',
    'Coventry B A Dairies',
    'Cardiff Cymru Dairy',
    'Peterborough East Anglia',
    'Norfolk Broadland Foods',
  ];
  String selectedValue = '';
  String selectedVender = '';
  Color myColor = Colors.grey[300]!;
  bool listview = false;
  bool listview1 = false;
  bool tapped = false;
  // var venderList = [
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
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: SizedBox(
                height: 96.h,
                child: Image.asset(
                  AppFiles.logoPath,
                ),
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 24.w,
              ),
              child: Column(
                children: [
                  Container(
                    width: Get.width,
                    height: 55.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: myColor, width: 2),
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          listview1 = !listview1;
                        });
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0.w, top: 0.h),
                              child: Text(
                                selectedValue == ''
                                    ? "Select City here..."
                                    : selectedValue,
                                style: TextStyle(
                                  color: myColor == Colors.blue
                                      ? Colors.black
                                      : Colors.grey[700],
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  listview1
                      ? Card(
                          elevation: 9,
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: venderList.length,
                                itemBuilder: (context, index) {
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        myColor = Colors.blue;
                                        tapped = true;
                                        selectedValue =
                                            countriesList[index].toString();
                                        listview1 = false;
                                        selectedValueIndex = index;
                                      });
                                    },
                                    child: ListTile(
                                      title: Text(countriesList[index]),
                                    ),
                                  );
                                }),
                          ),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 16.h,
                  ),
                  Container(
                    width: Get.width,
                    height: 55.h,
                    decoration: BoxDecoration(
                      border: Border.all(color: myColor, width: 2),
                      borderRadius: BorderRadius.circular(
                        8.r,
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          listview = !listview;
                        });
                      },
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(left: 8.0.w, top: 0.h),
                              child: Text(
                                selectedVender == ''
                                    ? "Choice vender here..."
                                    : selectedVender,
                                style: TextStyle(
                                  color: myColor == Colors.blue
                                      ? Colors.black
                                      : Colors.grey[700],
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_drop_down,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  listview
                      ? Card(
                          elevation: 9,
                          child: MediaQuery.removePadding(
                            context: context,
                            removeTop: true,
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: tapped ? 1 : venderList.length,
                              itemBuilder: (context, index) => GestureDetector(
                                onTap: () {
                                  setState(() {
                                    myColor == Colors.blue;
                                    listview = false;
                                    selectedVender =
                                        venderList[selectedValueIndex!];
                                  });
                                },
                                child: ListTile(
                                  title: selectedValueIndex != null
                                      ? Text(venderList[selectedValueIndex!])
                                      : Text(venderList[index]),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  SizedBox(
                    height: 16.h,
                  ),
                  SizedBox(
                    height: 40.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomerType(),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
