

import '../../../../../const/imports.dart';

class AppointmentItems extends StatefulWidget {
  const AppointmentItems({super.key});

  @override
  State<AppointmentItems> createState() => _AppointmentItemsState();
}

class _AppointmentItemsState extends State<AppointmentItems> {
  late int date;
  late bool isRed;
  late bool isDone;

  @override
  void initState() {
    date = 10;
    isRed = false;
    isDone = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 8,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20.h,
          );
        },
        itemBuilder: (context, index) {
          date += 2;
          isRed = !isRed;
          if (index < 3) {
            isDone = true;
          } else {
            isDone = false;
          }

          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AppointmentInfo();
                  },
                ),
              );
            },
            child: AppointmentWidget(
              time: date,
              color: isRed,
              isDone: isDone,
            ),
          );
        },
      ),
    );
  }
}
