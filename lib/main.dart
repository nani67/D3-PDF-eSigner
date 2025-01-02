import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'configs.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, DeviceOrientation.portraitDown, DeviceOrientation.landscapeLeft, DeviceOrientation.landscapeRight
  ]);
  runApp(MyAppStateless());
}

class MyAppStateless extends StatelessWidget {
  const MyAppStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PDF eSigner',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Configs.mainColor,
      ),
      home: MyAppStateful(),
    );
  }
}

class MyAppStateful extends StatefulWidget {
  const MyAppStateful({super.key});

  @override
  State<MyAppStateful> createState() => MyApp();
}

class MyApp extends State<MyAppStateful> {

  @override
  void initState() {
    super.initState();
    initialization();
  }

  void initialization() async {
    await Future.delayed(Duration(seconds: 1));
    FlutterNativeSplash.remove();
    // await Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
    );
  }
}