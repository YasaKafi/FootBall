import 'package:firebase_core/firebase_core.dart';
import 'package:football/Navigation%20Bar/mainNav.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:football/Navigation Bar/Widget/HomePageViewModel.dart';
import 'package:football/View/Onboarding.dart';

int? isviewed;
void main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  isviewed = prefs.getInt('onBoard');
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();



  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomepageViewModel()
        ),
      ],
      child: GetMaterialApp(
        // initialBinding: InstanceBinding(),
        debugShowCheckedModeBanner: false,
        title: 'Football App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  OnBoard(),
      ),
    );
  }
}


