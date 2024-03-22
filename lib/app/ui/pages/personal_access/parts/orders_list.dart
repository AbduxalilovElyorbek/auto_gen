import '../../../../../const/imports.dart';

class OrdersList extends StatelessWidget {
  const OrdersList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 20.w,
        ),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 15.h,
          );
        },
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AppointmentPage(),
              ),
            ),
            child: const OrderItem(),
          );
        },
      ),
    );
  }
}
