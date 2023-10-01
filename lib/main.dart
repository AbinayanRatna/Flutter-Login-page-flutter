import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int currentIndex = 0;
  bool buttonPressedOrNot=false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(411, 899),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              backgroundColor: const Color.fromRGBO(16, 36, 85, 1),
              body: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromRGBO(16, 36, 85, 1),
                    ),
                  ),
                  Expanded(
                    flex: 7,
                    child: Container(
                      color: const Color.fromRGBO(16, 36, 85, 1),
                      width: MediaQuery.of(context).size.width,
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: SvgPicture.asset(
                          "assets/mobile_shopping_bag.svg",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      decoration: BoxDecoration(
                          color: const Color.fromRGBO(177, 188, 217, 1),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40.w),
                            topRight: Radius.circular(40.w),
                            bottomLeft: const Radius.circular(0),
                            bottomRight: const Radius.circular(0),
                          )),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                    border: Border(
                                      bottom: BorderSide(
                                        color: Color.fromRGBO(85, 38, 25, 1),
                                        width: 2,
                                      ),
                                    ),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      setState(() {
                                        currentIndex = 1;
                                      });
                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.zero,
                                              bottomRight: Radius.zero,
                                              topLeft: Radius.circular(40),
                                              topRight: Radius.zero)),
                                      elevation: 0,
                                      onPrimary:
                                          const Color.fromRGBO(85, 38, 25, 1),
                                      primary: const Color.fromRGBO(
                                          177, 188, 217, 1),
                                      padding: EdgeInsets.only(
                                          bottom: 20.h,
                                          left: 30.h,
                                          right: 20.h,
                                          top: 20.h),
                                      textStyle: TextStyle(
                                        fontSize: 30.w,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    child: const Text("Customer"),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  decoration: const BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                    color: Color.fromRGBO(85, 38, 25, 1),
                                    width: 2,
                                  ))),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      currentIndex = 2;

                                    },
                                    style: ElevatedButton.styleFrom(
                                      shape: const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.zero,
                                              bottomRight: Radius.zero,
                                              topLeft: Radius.zero,
                                              topRight: Radius.circular(40))),
                                      elevation: 0,
                                      onPrimary:
                                          const Color.fromRGBO(85, 38, 25, 1),
                                      primary: const Color.fromRGBO(
                                          177, 188, 217, 1),
                                      padding: EdgeInsets.only(
                                          bottom: 20.h,
                                          left: 30.h,
                                          right: 20.h,
                                          top: 20.h),
                                      textStyle: TextStyle(
                                        fontSize: 30.w,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    child: const Text("Admin"),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }
}
