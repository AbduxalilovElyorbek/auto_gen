import 'package:auto_gen/app/ui/pages/appointment/appointment_page.dart';
import 'package:auto_gen/app/ui/pages/personal_access/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15.h,
          );
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppointmentPage(),
              ),
            ),
            child: const OrderItem(),
          );
        },
      ),
    );
  }
}
