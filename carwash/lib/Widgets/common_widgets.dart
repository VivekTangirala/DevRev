import '../file_exporter.dart';

class AppText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  const AppText(
      {Key? key,
      required this.text,
      this.color,
      this.fontSize,
      this.fontWeight,
      this.textAlign,
      this.overflow,
      this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? 15,
        fontWeight: fontWeight,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}

class AlertDialogBox {
  static Future<dynamic> showDialogBox({
    required String alert,
    String? content,
    required BuildContext context,
    String? textBox,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: AppText(text: alert),
        content: AppText(text: content ?? ""),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: AppText(text: textBox ?? "ok"),
          )
        ],
      ),
    );
  }
}
