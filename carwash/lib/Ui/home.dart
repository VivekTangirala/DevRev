import '../file_exporter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = true;
  List<ApiResponseDemo>? response;
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    response = await ApiService.getApiResponseDemo();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: isLoading == true
            ? const CircularProgressIndicator()
            : AppText(text: response?[22].title ?? " empty"),
      ),
    );
  }
}
