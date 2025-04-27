import 'package:ecommerce_buyer_app/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../auth/bloc/logout/logout_bloc.dart';
import '../../auth/pages/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Align(
          alignment: const Alignment(0, 1),
          child: BlocConsumer<LogoutBloc, LogoutState>(
            listener: (context, state) {
              state.maybeWhen(
                orElse: () {},
                success: () {
                  context.pushReplacement(const LoginPage());
                },
                error: (message) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text(message),
                    backgroundColor: Colors.red,
                  ));
                },
              );
            },
            builder: (context, state) {
              return state.maybeWhen(
                  orElse: () {
                    return Button.filled(
                        width: 300.0,
                        onPressed: () {
                          context
                              .read<LogoutBloc>()
                              .add(const LogoutEvent.logout());
                        },
                        label: "logout");
                  },
                  loading: () => const Center(
                        child: CircularProgressIndicator(),
                      ));
            },
          )),
    );
  }
}
