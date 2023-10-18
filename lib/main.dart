import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themed_app/home/home_page.dart';
import 'package:themed_app/theme/bloc/theme_bloc.dart';

void main() {
  // BLoC provider con socope para poder cambiar themes en toda la app
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // BLoC builder para cambiar theme de la Material App
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Change Themes App',
          theme: state.themeData,
          home: HomePage(),
        );
      },
    );
  }
}
