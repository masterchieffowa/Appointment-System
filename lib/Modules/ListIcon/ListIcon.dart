import 'package:flutter/material.dart';

class ListIcon extends StatelessWidget {
  const ListIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
              leading: const Icon(Icons.person),
              title: const Text("Mahmoud Adel"),
              subtitle: const Text("Last seen 3 hours ago"),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            );
  }
}
