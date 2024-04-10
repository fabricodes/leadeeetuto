import 'package:flutter/material.dart';
import 'package:leadeetuto/screens/guest/auth.dart';
import 'package:leadeetuto/screens/guest/guest.dart';
import 'package:leadeetuto/screens/guest/password.dart';
import 'package:leadeetuto/screens/guest/term.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Leadee',
      home: GuestScreen(),
    );
  }
}
