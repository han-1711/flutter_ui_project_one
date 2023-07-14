import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ui_project_one/ui/screens/home/bloc/bloc_button_press.dart';

import 'ui/screens/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ButtonBloc(),
          ),
        ],
        child: const MaterialApp(
          home: HomeScreen(),
          debugShowCheckedModeBanner: false,
        ));
  }
}
