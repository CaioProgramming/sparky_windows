import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:windows/components/SideMenu.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (!Platform.isAndroid || Platform.isIOS) {
    await DesktopWindow.setMinWindowSize(const Size(800, 800));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sparky',
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
          primarySwatch: Colors.amber,
          brightness: Brightness.dark,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          scaffoldBackgroundColor: Colors.black87,
          backgroundColor: Colors.black87),
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MainWindow(),
    );
  }
}

class MainWindow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Row(
            children: [SideMenu()],
          ))
        ],
      ),
    );
  }
}
