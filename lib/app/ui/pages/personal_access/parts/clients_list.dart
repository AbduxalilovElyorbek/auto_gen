import 'package:auto_gen/app/ui/pages/personal_access/get_client.dart';
import 'package:auto_gen/app/ui/pages/personal_access/widgets/clients_item.dart';
import 'package:flutter/material.dart';

class ClientsList extends StatelessWidget {
  const ClientsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 10,
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GetClient(),
              ),
            );
          },
          child: const ClientsItem(),
        ),
      ),
    );
  }
}
