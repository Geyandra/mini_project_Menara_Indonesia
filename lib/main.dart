import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mini_project_menara_indonesia/View/navbar.dart';
import 'package:provider/provider.dart';

import 'View-Model/comics.dart';

void main() {
  
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => ComicsProvider()),
  ],
  child: const MyApp(),
  ));
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          fontFamily: GoogleFonts.poppins(
                  textStyle: const TextStyle(fontWeight: FontWeight.w500))
              .fontFamily,
          useMaterial3: true),
      home: NavBar(),
    );
  }
}