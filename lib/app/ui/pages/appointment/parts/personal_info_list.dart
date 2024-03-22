


import '../../../../../const/imports.dart';

class PersonalInfoList extends StatelessWidget {
  const PersonalInfoList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: 8,
        separatorBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: 8.h,
              ),
              const Divider(),
            ],
          );
        },
        itemBuilder: (context, index) {
          return const PersonalInfoItem();
        },
      ),
    );
  }
}
