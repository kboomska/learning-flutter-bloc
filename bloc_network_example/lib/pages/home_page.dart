import 'package:flutter/material.dart';

import 'package:bloc_network_example/widgets/action_buttons.dart';
import 'package:bloc_network_example/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('User List'),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ActionButtons(),
          UserList(),
        ],
      ),
    );
  }
}
