import 'package:flutter/material.dart';
import 'package:leadeetuto/screens/guest/guest.dart';
import 'package:leadeetuto/screens/services/userService.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final UserService _userService = UserService();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () async {
              await _userService.logout();
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => const GuestScreen(),
                ),
                (route) => false,
              );
            },
            child: const Text(
              'logout',
            ),
          ),
        ),
      ),
    );
  }
}
