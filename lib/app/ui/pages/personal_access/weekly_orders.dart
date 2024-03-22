import 'package:auto_gen/app/ui/widgets/button.dart';
import 'package:auto_gen/app/ui/pages/personal_access/parts/orders_list.dart';
import 'package:auto_gen/const/colors/colors.dart';
import 'package:auto_gen/const/icons/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WeeklyOrders extends StatelessWidget {
  const WeeklyOrders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: transparent,
        surfaceTintColor: transparent,
        toolbarHeight: 120.h,
        title: Column(
          children: [
            SvgPicture.asset(
              AppIcons.logoIcon,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: red,
                    width: 2,
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: SvgPicture.asset(
                      AppIcons.backIcon,
                      colorFilter: ColorFilter.mode(
                        white,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                  Text(
                    "Мои заказы",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      AppIcons.moreMenuIcon,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 10.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ButtonWidget(
                text: "За сегодня",
                textColor: red,
                hasBorder: true,
                func: () {},
              ),
              ButtonWidget(
                text: "За неделю",
                textColor: dark,
                hasBorder: false,
                func: () {},
              ),
            ],
          ),
          SizedBox(
            height: 25.h,
          ),
          const OrdersList(),
        ],
      ),
    );
  }
}
