
import '../../../../const/imports.dart';

class AppointmentPage extends StatefulWidget {
  const AppointmentPage({super.key});

  @override
  State<AppointmentPage> createState() => _AppointmentPageState();
}

class _AppointmentPageState extends State<AppointmentPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 250.h,
        backgroundColor: background,
        automaticallyImplyLeading: false,
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Очередь",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    color: white,
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const PersonalInfo();
                            },
                          ),
                        );
                      },
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
              height: 30.h,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Клиенты",
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                  color: white,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const AppointmentItems(),
              SizedBox(
                height: MediaQuery.of(context).padding.bottom + 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
