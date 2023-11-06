import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:simple_workout_tracker_app/data/workout_data.dart';
import 'package:simple_workout_tracker_app/pages/home_page.dart';

void main() async {
  // initialize hive
  await Hive.initFlutter();
  // open a hive box
  await Hive.openBox("workout_database");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WorkoutData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
