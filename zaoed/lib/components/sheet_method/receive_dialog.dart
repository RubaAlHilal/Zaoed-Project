import 'package:flutter/material.dart';
import 'package:zaoed/components/button_widget.dart';
import 'package:zaoed/components/dialog_widgets/dialog_widget.dart';
import 'package:zaoed/components/sheet_method/widget/spen_text.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/extensions/navigator.dart';
import 'package:zaoed/extensions/screen_dimensions.dart';
import 'package:zaoed/providor_show_dialogs/components/state_dialog.dart';

extension ReceiveDialog on BuildContext {
  receiveDialog() {
    showBottomSheet(
      context: this,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              color: AppColors().gray6),
          height: context.getHeight(divide: 2.5),
          width: context.getWidth(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  Text("التوجه إلى نقطة الشحن",
                      style: TextStyle(color: AppColors().white, fontSize: 20)),
                  const SpanText(title: "بقي 5 دقائق حتى الوصول الى الموقع"),
                  const SizedBox(
                    height: 15,
                  ),
                  Text("تفاصيل الحجز",
                      style: TextStyle(color: AppColors().white, fontSize: 20)),
                  const SpanText(title: "الموقع:", result: " منزل إيلاف"),
                  const SpanText(
                      title: "نوع الموصل:",
                      image: "lib/assets/icons/Type 1.png"),
                  const SpanText(title: "مدة الشحن:", result: " 3 ساعات"),
                  const SizedBox(
                    height: 15,
                  ),
                  SpanText(
                    title: "الوقت المتبقي لإنتهاء الشحن:",
                    result: "9 دقائق",
                    color: AppColors().green,
                  ),
                  const SizedBox(height: 15),
                  ButtonWidget(
                    onPress: () => showDialog(
                        context: context,
                        builder: (context) {
                          return DialogWidget(
                              imageIcon: ImageIcon(
                                const AssetImage(
                                    "lib/assets/icons/mingcute_sad-fill.png"),
                                color: AppColors().green,
                              ),
                              title: "تنبيه!",
                              bodyText: "هل أنت متأكد من رغبتك في إلغاء حجزك؟",
                              button1: "نعم",
                              button2: "تراجع",
                              pressOne: () {
                                context.pop();
                                context.pop();
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      const StateDialog(title: "تم الإلغاء"),
                                );
                              },
                              pressTwo: () => context.pop());
                        }),
                    textEntry: "إلغاء الحجز",
                    backColor: AppColors().gray6,
                    textColor: AppColors().green,
                    borderColor: AppColors().green,
                  )
                ],
              ),
            ]),
          ),
        );
      },
    );
  }

  arrivedToCharging() {
    showBottomSheet(
      context: this,
      builder: (context) {
        return Container(
          decoration: BoxDecoration(
              borderRadius:
                  const BorderRadius.vertical(top: Radius.circular(10)),
              color: AppColors().gray6),
          height: context.getHeight(divide: 3),
          width: context.getWidth(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ListView(children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text("وصلت لنقطة الشحن",
                      style: TextStyle(color: AppColors().white, fontSize: 24)),
                  const SizedBox(
                    height: 10,
                  ),
                  Text("لبدء عملية الشحن الرجاء مسح الكود",
                      style: TextStyle(color: AppColors().white, fontSize: 18)),
                  SpanText(
                    resultTitle: 18,
                    sizeTitle: 18,
                    title: "الوقت المتبقي لإنتهاء وقت الحجز:",
                    result: " 9 دقائق",
                    color: AppColors().green,
                  ),
                  const SizedBox(height: 15),
                  ButtonWidget(
                    onPress: () {},
                    textEntry: "مسح الباركود",
                    backColor: AppColors().green,
                    textColor: AppColors().gray6,
                    borderColor: AppColors().green,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    onPress: () => showDialog(
                        context: context,
                        builder: (context) {
                          return DialogWidget(
                              imageIcon: ImageIcon(
                                const AssetImage(
                                    "lib/assets/icons/mingcute_sad-fill.png"),
                                color: AppColors().green,
                              ),
                              title: "تنبيه!",
                              bodyText: "هل أنت متأكد من رغبتك في إلغاء حجزك؟",
                              button1: "نعم",
                              button2: "تراجع",
                              pressOne: () {
                                context.pop();
                                context.pop();
                                showDialog(
                                  context: context,
                                  builder: (context) =>
                                      const StateDialog(title: "تم الإلغاء"),
                                );
                              },
                              pressTwo: () => context.pop());
                        }),
                    textEntry: "إلغاء الحجز",
                    backColor: AppColors().gray6,
                    textColor: AppColors().green,
                    borderColor: AppColors().green,
                  )
                ],
              ),
            ]),
          ),
        );
      },
    );
  }
}
