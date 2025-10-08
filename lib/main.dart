import 'package:flutter/material.dart';
// import 'MyScaffold.dart';
// import 'MyAppBar.dart';
// import 'MyText.dart';
// import 'MyContainer.dart';
// import 'MyColumnAndRow.dart';
// import 'MyButton.dart';
// import 'MyGestures.dart';
// import 'MyTextField.dart';
// import 'my_widget_01/MyTextField2.dart';
import 'my_widget_form_02/f1_form_basic.dart';

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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      debugShowCheckedModeBanner: false,
      home: FormBasicDemo(),
    );
  }
}
