import 'package:auto_gen/const/colors/colors.dart';
import 'package:auto_gen/const/icons/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({
    super.key,
    required this.time,
    required this.color,
    required this.isDone,
  });
  final int time;
  final bool color;
  final bool isDone;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$time : 00",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "$time : 30",
                style: TextStyle(
                  fontSize: 8.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "${time + 1} : 00",
                style: TextStyle(
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        Flexible(
          flex: 6,
          child: Container(
            padding: EdgeInsets.all(8.r),
            decoration: BoxDecoration(
              border: Border(
                left: isDone
                    ? BorderSide.none
                    : BorderSide(
                        color: color ? red : white,
                        width: 2,
                      ),
              ),
              color: isDone ? red : background,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Дмитрий П",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: white,
                      ),
                    ),
                    Text(
                      "10:00",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Fade",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w700,
                        color: white,
                      ),
                    ),
                    Text(
                      "200 000 сум ",
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.w500,
                        color: white,
                      ),
                    ),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    SvgPicture.asset(
                      AppIcons.tickItem,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
