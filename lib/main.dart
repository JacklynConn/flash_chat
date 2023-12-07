import 'package:flash_chat_app/screens/login_screen.dart';
import 'package:flash_chat_app/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'screens/chat_screen.dart';
import 'screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id : (context) => const WelcomeScreen(),
        'login_screen' : (context) => LoginScreen(),
        'registration_screen' : (context) => RegistrationScreen(),
        'chat_screen' : (context) => ChatScreen(),
      },
    );
  }
}
