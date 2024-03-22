import 'package:auto_gen/const/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PersonalInfoItem extends StatelessWidget {
  const PersonalInfoItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Дмитрий П",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: white,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              "200 000",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
            Text(
              "06/21 10:00",
              style: TextStyle(
                fontSize: 8.sp,
                fontWeight: FontWeight.w500,
                color: white,
              ),
            ),
          ],
        )
      ],
    );
  }
}
