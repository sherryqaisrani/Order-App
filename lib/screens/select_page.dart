import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
  List<DropdownMenuItem> countriesList = [
    const DropdownMenuItem(
      child: Text(
        'London',
      ),
      value: 'London',
    ),
    const DropdownMenuItem(
      child: Text(
        'Coventry',
      ),
      value: 'Coventry',
    ),
    const DropdownMenuItem(
      child: Text(
        'Cardiff',
      ),
      value: 'Cardiff',
    ),
    const DropdownMenuItem(
      child: Text(
        'Peterborough',
      ),
      value: 'Peterborough',
    ),
    const DropdownMenuItem(
      child: Text(
        'Norfolk',
      ),
      value: 'Norfolk',
    ),
  ];

  List<DropdownMenuItem> venderList = [
    DropdownMenuItem(
      child: Text(
        'London CJ foods',
      ),
      value: 'London CJ foods',
    ),
    const DropdownMenuItem(
      child: Text(
        'Coventry B A Dairies',
      ),
      value: 'Coventry B A Dairies',
    ),
    const DropdownMenuItem(
      child: Text(
        'Cardiff Cymru Dairy',
      ),
      value: 'Cardiff Cymru Dairy',
    ),
    const DropdownMenuItem(
      child: Text(
        'Peterborough East Anglia',
      ),
      value: 'Peterborough East Anglia',
    ),
    const DropdownMenuItem(
      child: Text(
        'Norfolk Broadland Foods',
      ),
      value: 'Norfolk Broadland Foods',
    )
  ];
  String selectedValue = '';

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
                  DropdownButtonFormField(
                    onSaved: (newValue) => print(newValue),
                    onTap: () {},
                    items: countriesList,
                    hint: const Text('Select Country'),
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;

                        print(selectedValue);
                      });
                    },
                    decoration: getInputDecoration(hintText: 'Select Country'),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  DropdownButtonFormField(
                    onSaved: (newValue) => print(newValue),
                    items: selectedValue == ''
                        ? venderList
                        : <DropdownMenuItem>[
                            selectedValue == 'London'
                                ? venderList[0]
                                : selectedValue == 'Coventry'
                                    ? const DropdownMenuItem(
                                        child: Text(
                                          'Coventry B A Dairies',
                                        ),
                                        value: 'Coventry B A Dairies',
                                      )
                                    : selectedValue == 'Cardiff'
                                        ? const DropdownMenuItem(
                                            child: Text(
                                              'Cardiff Cymru Dairy',
                                            ),
                                            value: 'Cardiff Cymru Dairy',
                                          )
                                        : selectedValue == 'Peterborough'
                                            ? const DropdownMenuItem(
                                                child: Text(
                                                  'Peterborough East Anglia',
                                                ),
                                                value:
                                                    'Peterborough East Anglia',
                                              )
                                            : const DropdownMenuItem(
                                                child: Text(
                                                  'Norfolk Broadland Foods',
                                                ),
                                                value:
                                                    'Norfolk Broadland Foods',
                                              )
                          ],
                    hint: const Text('Select Vender'),
                    onTap: () {
                      setState(() {
                        <DropdownMenuItem>[
                          selectedValue == 'London'
                              ? venderList[0]
                              : selectedValue == 'Coventry'
                                  ? const DropdownMenuItem(
                                      child: Text(
                                        'Coventry B A Dairies',
                                      ),
                                      value: 'Coventry B A Dairies',
                                    )
                                  : selectedValue == 'Cardiff'
                                      ? const DropdownMenuItem(
                                          child: Text(
                                            'Cardiff Cymru Dairy',
                                          ),
                                          value: 'Cardiff Cymru Dairy',
                                        )
                                      : selectedValue == 'Peterborough'
                                          ? const DropdownMenuItem(
                                              child: Text(
                                                'Peterborough East Anglia',
                                              ),
                                              value: 'Peterborough East Anglia',
                                            )
                                          : const DropdownMenuItem(
                                              child: Text(
                                                'Norfolk Broadland Foods',
                                              ),
                                              value: 'Norfolk Broadland Foods',
                                            )
                        ];
                      });
                    },
                    onChanged: (value) {
                      // setState(() {});
                    },
                    decoration: getInputDecoration(hintText: 'Select Country'),
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
