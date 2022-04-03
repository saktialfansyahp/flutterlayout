import 'package:flutter/material.dart';
import 'package:flutter_layout/main_screen.dart';
import 'package:flutter_layout/provider/done_tourism_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (create) => DoneTourismProvider(),
        child: MaterialApp(
          title: 'Contacs',
          theme: ThemeData(),
          home: MainScreen(),
        ),

    );
  }
}
