import '../../file_exporter.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController paswordController = TextEditingController();
  TextEditingController confirmPaswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  void onPressedSignUp() async {
    AlertDialogBox.showDialogBox(alert: "Can't signup now", context: context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: SizedBox(
          width: Constants.screenWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const AppText(
                text: "Enter your credentials here",
                fontSize: 30,
              ),
              10.hGap,
              textFields(),
            ],
          ),
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
      height: Constants.screenHeight! / 2,
      width: Constants.screenWidth! / 2.5,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 244, 156, 102),
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
          5.hGap,
          TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Confirm Password",
              hintText: "pass123\$",
            ),
            obscureText: true,
            controller: confirmPaswordController,
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
              text: "SignUp",
              fontSize: 20.wWise,
              fontWeight: FontWeight.bold,
            ).onTap(onPressedSignUp),
          )
        ],
      ),
    );
  }
}
