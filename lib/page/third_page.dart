import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  color: Colors.greenAccent[100],
                ),
                child: Icon(
                  Icons.add,
                  color: Colors.greenAccent[400],
                  size: 60.w,
                ),
              ),
              onTap: () {},
            ),
            SizedBox(
              width: 100.w,
            ),
            Text(
              '2',
              style: TextStyle(fontSize: 200.sp),
            ),
            SizedBox(
              width: 100.w,
            ),
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
              onTap: () {},
            ),
          ],
        ),
        SizedBox(
          height: 100.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              child: Container(
                width: 120.w,
                height: 120.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(80.r),
                  color: Colors.blue[50],
                ),
                child: Icon(
                  Icons.navigate_before,
                  color: Colors.blue,
                  size: 60.w,
                ),
              ),
              onTap: () {},
            ),
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
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
