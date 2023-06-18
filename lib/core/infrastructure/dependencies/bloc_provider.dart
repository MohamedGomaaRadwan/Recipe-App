import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/infrastructure/auth/presentation/bloc/authentication/authentication_bloc.dart';
import 'dependency_init.dart';

class AppMainBlocProvider extends StatelessWidget {
  AppMainBlocProvider({super.key, this.child});

  final AuthenticationBloc _authenticationBloc = getIt<AuthenticationBloc>();

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<dynamic>>[
        BlocProvider<AuthenticationBloc>(
            create: (BuildContext context) => _authenticationBloc..add(AuthenticationEvent.appStarted())),
      ],
      child: child!,
    );
  }

}
