import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'screens/screens.dart';

Future<void> main() async {
  await dotenv.load();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Infinitunes',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      darkTheme: ThemeData.dark(
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.dark,
      home: const HomeScreen(),
      onGenerateRoute: (s) {
        if (s.name == Routes.albumScreen) {
          return MaterialPageRoute(
              builder: (ctx) => AlbumScreen(id: s.arguments as String));
        } else if (s.name == Routes.playlistScreen) {
          return MaterialPageRoute(
              builder: (ctx) => PlaylistScreen(id: s.arguments as String));
        } else {
          return MaterialPageRoute(builder: (ctx) => const HomeScreen());
        }
      },
    );
  }
}
