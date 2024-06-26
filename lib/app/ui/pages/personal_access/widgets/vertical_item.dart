

import '../../../../../const/imports.dart';

class VerticalItem extends StatelessWidget {
  const VerticalItem({super.key, required this.icon, required this.text});
  final String icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          icon,
          colorFilter: ColorFilter.mode(
            white,
            BlendMode.srcIn,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
            color: white,
          ),
        ),
      ],
    );
  }
}
