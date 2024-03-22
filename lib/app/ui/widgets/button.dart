import '../../../const/imports.dart';

class ButtonWidget extends StatelessWidget {
  ButtonWidget({
    super.key,
    required this.text,
    required this.hasBorder,
    required this.func,
    this.textColor,
  });
  final String text;
  final bool hasBorder;
  final VoidCallback func;
  late Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(
            vertical: 10.h,
            horizontal: 40.w,
          ),
          backgroundColor: hasBorder ? transparent : red,
          side: BorderSide(
            color: hasBorder ? red : transparent,
          )),
      onPressed: func,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: textColor ?? white,
        ),
      ),
    );
  }
}
