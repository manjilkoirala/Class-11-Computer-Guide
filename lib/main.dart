import 'package:class11computer/Screen/splash_scree.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:upgrader/upgrader.dart';

import 'Screen/homepage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Upgrader.clearSavedSettings();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Splash(),
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
          fontFamily: GoogleFonts.poppins().fontFamily,
        ));
  }
}
