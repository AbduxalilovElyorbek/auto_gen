

import '../../../../../const/imports.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({super.key, required this.title, required this.isWide});
  final String title;
  final bool isWide;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.w500,
              color: white,
            ),
          ),
        ),
        SizedBox(
          height: 8.h,
        ),
        SizedBox(
          height: 250.h,
          width: double.infinity,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 20.w),
            itemCount: 10,
            separatorBuilder: (context, index) {
              return SizedBox(
                width: 0.w,
              );
            },
            itemBuilder: (context, index) {
              return Container(
                // height: isWide ? 150.h : 230.h,
                width: isWide ? 230.w : 150.w,
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(
                    10.r,
                  ),
                  color: red,
                  image: DecorationImage(
                    image: AssetImage(
                      isWide ? AppImages.secondTestImage : AppImages.testImage,
                    ),
                    fit: BoxFit.fitHeight,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
