import 'dart:developer';
import 'package:carwash/Ui/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'file_exporter.dart';

Future<void> servicesToInitializeBeforeAppStartup() async {
  Constants.sharedPreferences = await SharedPreferences.getInstance();
  Constants.sharedPreferences?.setString('token', "value");
}

void main() async {
  runZonedGuarded(
    () async {
      await servicesToInitializeBeforeAppStartup();
      runApp(const MyApp());
    },
    ((error, stack) {
      log("The error is $error");
      log("The stack output is $stack");
    }),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
