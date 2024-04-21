import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:leadeetuto/screens/dashboard/home.dart';
import 'package:leadeetuto/screens/guest/guest.dart';
import 'package:leadeetuto/screens/services/userService.dart';

//void main() {
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey:
          "AIzaSyCwWOq2l8nlrpmHwpTIb4dFzZV6DrsI99U", // paste your api key here
      appId:
          "1:743122149939:android:b56cf45850708886223946", //paste your app id here
      messagingSenderId: "743122149939", //paste your messagingSenderId here
      projectId: "leadee-formation-83b56", //paste your project id here);
    ),
  );
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final UserService _userService = UserService();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Leadee',
        home: StreamBuilder(
          stream: _userService.user,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.hasData) {
                return const HomeScreen();
              }
              return const GuestScreen();
            }

            return const SafeArea(
              child: Scaffold(
                body: Center(
                  child: Text('loading...'),
                ),
              ),
            );
          },
        ));
  }
}
