import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notifications_flutter/presentation/bloc/notifications/notifications_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: context.select((NotificationsBloc bloc) => Text(
                '${bloc.state.status}',
                style: TextStyle(fontSize: size.width <= 412 ? 18 : 28),
              )),
          actions: [
            IconButton(
                onPressed: () {
                  context.read<NotificationsBloc>().requestPermission();
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: const _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 0,
        itemBuilder: (context, index) {
          return const ListTile();
        });
  }
}
