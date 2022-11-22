import 'dart:developer';

import '../file_exporter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;
  List<ApiResponseDemo>? response;
  String str = "";
  @override
  void initState() {
    getData();
    super.initState();
  }

  void getData() async {
    log("making the api call");
    str = await ApiService.getApiResponseDemo("user/");
    log("Inside get data home response is $str");
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading == true
            ? const CircularProgressIndicator()
            : Column(
                children: [
                  const AppText(text: "Home page"),
                  AppText(text: str),
                ],
              ),
      ),
    );
  }
}
