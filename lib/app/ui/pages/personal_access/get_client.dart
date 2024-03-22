

import '../../../../const/imports.dart';

class GetClient extends StatelessWidget {
  const GetClient({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 100.h,
                    ),
                    Text(
                      "Вы готовы\nпринимать заказы ?",
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w400,
                        color: white,
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Center(
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: ShapeDecoration(
                          shape: const PolygonShapeBorder(sides: 8),
                          color: white.withOpacity(0.3),
                        ),
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: red,
                                width: 2,
                              ),
                              borderRadius: BorderRadius.circular(
                                500.r,
                              ),
                            ),
                            padding: const EdgeInsets.all(4),
                            child: Image.asset(
                              AppImages.userTestImage,
                              height: 130.h,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        "Камиль Ильдаров",
                        style: TextStyle(
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w700,
                          color: white,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 24.h,
                    ),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          style: TextStyle(
                            color: white,
                          ),
                          children: [
                            TextSpan(
                              text: "Black Star Car Wash\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 18.sp,
                              ),
                            ),
                            TextSpan(
                              text: "ул. Лабзак, 12/1, Tashkent",
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            VerticalItem(
                              icon: AppIcons.locationIcon,
                              text: "ул. Лабзак, 12/1, Tashkent",
                            ),
                            VerticalItem(
                              icon: AppIcons.wifiIcon,
                              text: "Wi Fi",
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            VerticalItem(
                              icon: AppIcons.clockIcon,
                              text: "Пн-Сб с 9:30 до 11:30",
                            ),
                            VerticalItem(
                              icon: AppIcons.parkIcon,
                              text: "бесплатно",
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: SizedBox(
                        width: 260.w,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const WeeklyOrders(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: red,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                AppIcons.usersIcon,
                              ),
                              SizedBox(
                                width: 14.w,
                              ),
                              Text(
                                "Принять заказы",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  color: white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).padding.bottom + 40.h,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
