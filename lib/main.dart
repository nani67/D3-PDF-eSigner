import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'configs.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, DeviceOrientation.portraitDown, DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF eSigner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Configs.mainColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Configs.mainColor,
          title: Text('PDF eSigner'),
        ),
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Hello World!'),
              Text('Hello World!'),
              ElevatedButton(
                onPressed: () {},
                child: Text('Sign PDF'),
              ),
            ],
          ),
            ),
        ),
        )
      ),
    );
  }
}