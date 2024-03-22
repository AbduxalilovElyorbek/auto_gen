

import '../../../../const/imports.dart';

class AccessVerify extends StatefulWidget {
  const AccessVerify({super.key, required this.number});
  final String number;

  @override
  State<AccessVerify> createState() => _AccessVerifyState();
}

class _AccessVerifyState extends State<AccessVerify> {
  late TextEditingController controller;

  @override
  void initState() {
    controller = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppIcons.backIcon,
            colorFilter: ColorFilter.mode(
              red,
              BlendMode.dstIn,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verify",
              style: TextStyle(
                fontSize: 40.sp,
                fontWeight: FontWeight.w600,
                color: red,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              "We have sent an OTP on your number\n${widget.number}",
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 50.h,
            ),
            Center(
              child: Pinput(
                controller: controller,
                onChanged: (value) {
                  if (controller.length == 4) {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        
                        builder: (context) => const PersonalAccessPage(),
                      ),
                    );
                  }
                },
                defaultPinTheme: PinTheme(
                  width: 56,
                  height: 56,
                  textStyle: TextStyle(
                    fontSize: 48.sp,
                    color: red,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13.r),
                    color: lightDark,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
