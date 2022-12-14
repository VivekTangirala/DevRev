import '../file_exporter.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) => navigateTo());
    super.initState();
  }

  void navigateTo() async {
    Constants.screenWidth = MediaQuery.of(context).size.width;
    Constants.screenHeight = MediaQuery.of(context).size.height;
    bool isUserLoggedIn =
        Constants.sharedPreferences?.getString('token')?.isNotEmpty ??
            false; //to check if user is already logged in or not
    if (isUserLoggedIn) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: ((context) {
            return const HomePage();
          }),
        ),
      );
    } else {
      Navigator.push(context, MaterialPageRoute(builder: ((context) {
        return const LoginPage();
      })));
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoadingScreen(),
    );
  }
}
