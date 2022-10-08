import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_demo/controlller/tap_controller.dart';
import 'package:getx_demo/page/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    ButtonController controller = Get.put(ButtonController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                child: Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.r),
                    color: Colors.red[100],
                  ),
                  child: Icon(
                    Icons.remove,
                    color: Colors.redAccent[400],
                    size: 60.w,
                  ),
                ),
                onTap: () {
                  controller.decrement();
                },
              ),
              SizedBox(
                width: 100.w,
              ),
              GetBuilder<ButtonController>(builder: (_) {
                return Text(
                  controller.count.toString(),
                  style: TextStyle(fontSize: 150.sp),
                );
              }),
              SizedBox(
                width: 100.w,
              ),
              GestureDetector(
                child: Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.r),
                    color: Colors.greenAccent[100],
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.greenAccent[400],
                    size: 60.w,
                  ),
                ),
                onTap: () {
                  controller.increment();
                },
              ),
            ],
          ),
          SizedBox(
            height: 100.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // GestureDetector(
              //   child: Container(
              //     width: 120.w,
              //     height: 120.h,
              //     decoration: BoxDecoration(
              //       borderRadius: BorderRadius.circular(80.r),
              //       color: Colors.blue[50],
              //     ),
              //     child: Icon(
              //       Icons.navigate_before,
              //       color: Colors.blue,
              //       size: 60.w,
              //     ),
              //   ),
              //   onTap: () {},
              // ),
              SizedBox(
                width: 20.w,
              ),
              GestureDetector(
                child: Container(
                  width: 120.w,
                  height: 120.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80.r),
                    color: Colors.blue[50],
                  ),
                  child: Icon(
                    Icons.navigate_next,
                    color: Colors.blue,
                    size: 60.w,
                  ),
                ),
                onTap: () {
                  Get.to(() => const SecondPage());
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
