import '../../../../../const/imports.dart';

class TextFieldWidget extends StatelessWidget {
  const TextFieldWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.controller,
    required this.isNumber,
  });
  final String text;
  final String icon;
  final TextEditingController controller;
  final bool isNumber;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLength: isNumber ? 13 : null,
      keyboardType: isNumber ? TextInputType.number : TextInputType.text,
      decoration: InputDecoration(
        fillColor: red,
        filled: true,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 19.h,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(41.r),
          borderSide: BorderSide.none,
        ),
        hintText: text,
        hintStyle: TextStyle(
          fontSize: 18.sp,
          fontWeight: FontWeight.w500,
          color: white,
        ),
        prefixIcon: Container(
          margin: EdgeInsets.only(
            top: 17.h,
            bottom: 17.h,
            right: 10.w,
          ),
          decoration: BoxDecoration(
            border: Border(
              right: BorderSide(
                color: white,
              ),
            ),
          ),
          child: SvgPicture.asset(
            icon,
            height: 21.h,
          ),
        ),
        prefixIconColor: white,
      ),
    );
  }
}
