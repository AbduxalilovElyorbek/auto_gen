import '../../../../const/imports.dart';

class ClientsPage extends StatelessWidget {
  const ClientsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: red,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: SvgPicture.asset(
            AppIcons.backIcon,
            colorFilter: ColorFilter.mode(white, BlendMode.srcIn),
          ),
        ),
        title: Text(
          "Клиенты",
          style: TextStyle(
            fontSize: 24.sp,
            fontWeight: FontWeight.w700,
            color: white,
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20.h),
              child: Text(
                "15 клиентов были в Трумэне",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w700,
                  color: white,
                ),
              ),
            ),
          ),
          const ClientsList(),
          SizedBox(
            height: MediaQuery.of(context).padding.bottom + 16.h,
          ),
        ],
      ),
    );
  }
}
