import 'package:flutter/material.dart';
import 'component/curriculum_vitae.dart';

//mateApp
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurriculumVitea(),
    );
  }
}
