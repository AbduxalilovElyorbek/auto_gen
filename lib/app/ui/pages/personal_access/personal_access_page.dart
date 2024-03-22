import 'package:auto_gen/app/ui/pages/personal_access/clients_page.dart';
import 'package:auto_gen/app/ui/pages/personal_access/parts/items.dart';
import 'package:auto_gen/const/colors/colors.dart';
import 'package:auto_gen/const/icons/icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PersonalAccessPage extends StatelessWidget {
  const PersonalAccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SvgPicture.asset(
          AppIcons.logoIcon,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 50.h,
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            width: double.infinity,
            color: red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    InkWell(
                      child: SvgPicture.asset(
                        AppIcons.menuIcon,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    Text(
                      "Barbershop",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ClientsPage(),
                      ),
                    );
                  },
                  icon: SvgPicture.asset(
                    AppIcons.searchIcon,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          const ItemsWidget(
            title: "Новые барбершопы",
            isWide: false,
          ),
          const ItemsWidget(
            title: "Больше посещенных",
            isWide: true,
          ),
        ],
      ),
    );
  }
}
