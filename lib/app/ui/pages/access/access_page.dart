import 'package:auto_gen/app/ui/pages/access/access_verify.dart';
import 'package:auto_gen/app/ui/pages/personal_access/personal_access_page.dart';
import 'package:auto_gen/app/ui/widgets/button.dart';
import 'package:auto_gen/app/ui/pages/access/widgets/text_field.dart';
import 'package:auto_gen/const/icons/icon.dart';
import 'package:auto_gen/const/images/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AccessPage extends StatefulWidget {
  const AccessPage({super.key});

  @override
  State<AccessPage> createState() => _AccessPageState();
}

class _AccessPageState extends State<AccessPage> {
  late TextEditingController userName;
  late TextEditingController number;

  @override
  void initState() {
    number = TextEditingController();
    userName = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    number.dispose();
    userName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            SvgPicture.asset(AppIcons.logoIcon),
            SizedBox(
              height: 30.h,
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFieldWidget(
                isNumber: false,
                text: "имя",
                icon: AppIcons.userIcon,
                controller: userName,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40.w),
              child: TextFieldWidget(
                isNumber: true,
                controller: number,
                text: "номер телефона",
                icon: AppIcons.phoneIcon,
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            Center(
              child: Image.asset(
                AppImages.circleImage,
                fit: BoxFit.fitHeight,
                width: 220.w,
              ),
            ),
            SizedBox(
              height: 40.w,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ButtonWidget(
                    text: "Пропустить",
                    hasBorder: true,
                    func: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return const PersonalAccessPage();
                          },
                        ),
                      );
                    },
                  ),
                  ButtonWidget(
                    text: "Продолжить",
                    hasBorder: false,
                    func: () {
                      if (number.text != '' && number.text.length == 13) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return AccessVerify(
                                number: number.text,
                              );
                            },
                          ),
                        );
                      }
                    },
                  )
                ],
              ),
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
