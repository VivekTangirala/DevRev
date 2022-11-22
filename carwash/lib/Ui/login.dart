import '../file_exporter.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController paswordController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void onPressedLogin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 171, 128),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: Constants.screenWidth,
              child: Column(
                children: [
                  10.hGap,
                  const AppText(
                    text: "Welcome to Car Wash",
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  30.hGap,
                  const AppText(
                    text: "Login",
                    fontSize: 30,
                  ),
                  10.hGap,
                  textFields(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget textFields() {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.hWise,
        horizontal: 20.wWise,
      ),
      height: Constants.screenHeight! / 2.5,
      width: Constants.screenWidth! / 2.5,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 244, 156, 102),
        borderRadius: BorderRadius.circular(
          10.wWise,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Username",
              hintText: "user123\$",
            ),
            controller: usernameController,
          ),
          5.hGap,
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Password",
              hintText: "pass123\$",
            ),
            obscureText: true,
            controller: paswordController,
          ),
          10.hGap,
          Container(
            padding: EdgeInsets.symmetric(
              vertical: 5.hWise,
              horizontal: 10.wWise,
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 235, 108, 30),
              borderRadius: BorderRadius.circular(
                5.wWise,
              ),
            ),
            child: AppText(
              text: "Login",
              fontSize: 20.wWise,
              fontWeight: FontWeight.bold,
            ).onTap(onPressedLogin),
          )
        ],
      ),
    );
  }
}
