

import '../../../../../const/imports.dart';

class OrderItem extends StatelessWidget {
  const OrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          35.r,
        ),
        color: red,
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      // height: 230.h,
      width: double.infinity,
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                AppIcons.personIcon,
              ),
              SizedBox(
                width: 20.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Камиль Ильдаров",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w700,
                      color: white,
                    ),
                  ),
                  Text(
                    "+99897726489",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Divider(
            color: white,
            height: 2.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Дата посещения",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),
                  ),
                  Text(
                    "03.12.2019",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ],
              ),
              Text(
                "16:35",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: white,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 8.h,
          ),
          Divider(
            color: white,
            height: 2.h,
          ),
          SizedBox(
            height: 8.h,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Тип автомобиля",
                    style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.w500,
                      color: white,
                    ),
                  ),
                  Text(
                    "легковой",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      color: white,
                    ),
                  ),
                ],
              ),
              SvgPicture.asset(
                AppIcons.carIcon,
                colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
