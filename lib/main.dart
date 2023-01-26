import 'package:diseno_gradientes_flutter/screens/screens.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'diseno_gradientes_flutter',
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (context) => const HomeScreen(),
      },
    );
  }
}
