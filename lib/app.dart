import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:music/blocs/auth/auth_bloc.dart';

import 'blocs/auth/auth_repository.dart';
import 'constants/strings.dart';
import 'routes/router.gr.dart';

// assuing this is the root widget of your App
class AppStart extends StatefulWidget {
  const AppStart({Key? key}) : super(key: key);

  @override
  _AppStartState createState() => _AppStartState();
}

class _AppStartState extends State<AppStart> {
  // make sure you don't initiate your router
  // inside of the build function.
  final _musicRouter = MusicRouter();
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(
              authRepository: RepositoryProvider.of<AuthRepository>(context),
            ),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: _musicRouter.delegate(),
          routeInformationParser: _musicRouter.defaultRouteParser(),
          title: MusicStrings.title,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.pink,
            brightness: Brightness.light,
            scaffoldBackgroundColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
