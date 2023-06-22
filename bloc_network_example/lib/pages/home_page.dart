import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_network_example/services/user_repository.dart';
import 'package:bloc_network_example/widgets/action_buttons.dart';
import 'package:bloc_network_example/cubit/internet_cubit.dart';
import 'package:bloc_network_example/widgets/user_list.dart';
import 'package:bloc_network_example/bloc/user_event.dart';
import 'package:bloc_network_example/bloc/user_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => UserBloc(
              userRepository: context.read<UserRepository>(),
            )..add(UserLoadEvent()),
          ),
          BlocProvider(
            create: (context) => ConnectionCubit(),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            title: BlocBuilder<ConnectionCubit, MyConnectionState>(
              builder: (context, state) => state.connected
                  ? const Text('User List (в сети)')
                  : const Text(
                      'Нет соединения с интернетом!',
                    ),
            ),
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
      ),
    );
  }
}
