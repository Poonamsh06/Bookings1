import 'package:bookings/views/home_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAK4YMWKXgxPZxAu2MK4j8GSG5rNHVZ3LU",
      //authDomain: "bookingsi-56961.firebaseapp.com",
      projectId: "bookingsi-56961",
      // storageBucket: "bookingsi-56961.appspot.com",
      messagingSenderId: "107701451289",
      appId: "1:107701451289:web:65cc7d14b9d201f1344888",
      measurementId: "G-450QV7J4SQ",
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bookings',
      theme: ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 8, 68, 116)),
        useMaterial3: true,
      ),
      home: const HomeView(),
    );
  }
}
//#2d333f