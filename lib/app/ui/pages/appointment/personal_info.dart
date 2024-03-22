import 'package:auto_gen/app/ui/pages/appointment/parts/personal_info_list.dart';
import 'package:auto_gen/const/colors/colors.dart';
import 'package:auto_gen/const/icons/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_timeline_calendar/timeline/model/calendar_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/day_options.dart';
import 'package:flutter_timeline_calendar/timeline/model/headers_options.dart';
import 'package:flutter_timeline_calendar/timeline/utils/calendar_types.dart';
import 'package:flutter_timeline_calendar/timeline/widget/timeline_calendar.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: background,
        title: Text(
          "Статистика",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w700,
            color: white,
          ),
        ),
        actions: [
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  AppIcons.calendarIcon,
                ),
              ),
              Positioned(
                right: 10.0,
                bottom: 5.0,
                child: Container(
                  decoration: ShapeDecoration(
                    shape: const CircleBorder(),
                    color: red,
                  ),
                  padding: EdgeInsets.all(4.r),
                  child: Text(
                    "2",
                    style: TextStyle(
                      fontSize: 9.sp,
                      color: white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TimelineCalendar(
              calendarType: CalendarType.GREGORIAN,
              calendarLanguage: "en",
              calendarOptions: CalendarOptions(
                viewType: ViewType.DAILY,
                toggleViewType: false,
                headerMonthElevation: 0,
                headerMonthBackColor: Colors.transparent,
              ),
              dayOptions: DayOptions(
                compactMode: true,
                weekDaySelectedColor: red,
                disableDaysBeforeNow: false,
                selectedBackgroundColor: red,
              ),
              headerOptions: HeaderOptions(
                weekDayStringType: WeekDayStringTypes.SHORT,
                monthStringType: MonthStringTypes.FULL,
                headerTextColor: white,
                navigationColor: white,
                calendarIconColor: white,
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Text(
                "Сегодня",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: white,
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: const PersonalInfoList(),
            ),
            SizedBox(
              height: MediaQuery.of(context).padding.bottom + 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
