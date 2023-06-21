import 'package:bloc_network_example/bloc/user_bloc.dart';
import 'package:bloc_network_example/services/user_repository.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_network_example/widgets/action_buttons.dart';
import 'package:bloc_network_example/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  final userRepository = UserRepository();

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(userRepository: userRepository),
      child: Scaffold(
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
      ),
    );
  }
}
