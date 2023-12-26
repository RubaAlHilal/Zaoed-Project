import 'package:zaoed/constants/imports.dart';

class NotFoundBarcodeDialog extends StatelessWidget {
  const NotFoundBarcodeDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return DialogWidget(
      title: "خطأ!",
      bodyText: "لم يتم إيجاد الباركود",
      button1: "إعادة المحاولة",
      pressOne: () {
        context.pop();
      },
      button2: "الدعم",
      pressTwo: () {
        context.push(view: ChatScreen());
      },
    );
  }
}
