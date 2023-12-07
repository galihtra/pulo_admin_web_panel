import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:pulo_admin_web_panel/dashboard/side_navigation_drawer.dart';
import 'package:pulo_admin_web_panel/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Admin Panel',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const SideNavigationDrawer(),
    );
  }
}
