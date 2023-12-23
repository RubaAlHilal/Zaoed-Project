import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/method/date_time_widget.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/screens/AppBar/profail_screens_app_bar.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/widgets/card_widget/add_card.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/widgets/cars_widget/drop_menu.dart';
import 'package:zaoed/blocs/user_bloc/user_bloc.dart';
import 'package:zaoed/blocs/user_bloc/user_event.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/extensions/loading_extension.dart';
import 'package:zaoed/extensions/navigator.dart';
import 'package:zaoed/extensions/screen_dimensions.dart';
import 'package:zaoed/model/user_model.dart';

class AddInformation extends StatelessWidget {
  AddInformation({super.key});

  final List<String> gender = ["ذكر", "أنثى"];
  final selectGender = "Select gender";
  final genderController = ExpansionTileController();
  final dateController = TextEditingController();
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  // final datController = TextEditingController();
  // final dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ElevatedButton(
        onPressed: () {
          final user = UserModel(
              name: nameController.text,
              phone: phoneController.text,
              birthday: dateController.text,
              gender: selectGender);
          context.read<UserBloc>().add(UpdateUserEvent(user));
          context.successAddInfo(msg: 'تم إضافة البيانات بنجاح');
          Future.delayed(const Duration(seconds: 2), () {
            context.pop();
            context.pop();
          });
        },
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            foregroundColor: AppColors().gray8,
            minimumSize: Size(context.getWidth(divide: 1.1), 40),
            backgroundColor: AppColors().green),
        child: const Text(
          "حفظ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      backgroundColor: AppColors().gray9,
      appBar: appBar(context, title: 'البيانات الشخصية'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          FieldTextWidget(
            title: 'الاسم كامل',
            hint: "ادخل الاسم",
            controller: nameController,
          ),
          FieldTextWidget(
            title: 'تاريخ الميلاد',
            hint: "ادخل تاريخ الميلاد",
            keyboardType: TextInputType.datetime,
            controller: dateController,
            isFelid: false,
            onTap: () => showDatePickerWidget(
              context: context,
              onDateTimeChanged: (date) {
                dateController.text = date;
              },
            ),
          ),
          const Text(
            "الجنس",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          DropDownWidget(
              brand: selectGender,
              list: gender,
              brandController: genderController),
          FieldTextWidget(
            title: 'رقم الجوال',
            hint: "ادخل رقم الجوال",
            controller: phoneController,
          ),
          const FieldTextWidget(
              title: 'البريد الإلكتروني', hint: "ادخل البريد الإلكتروني"),
          const FieldTextWidget(title: 'كلمة المرور', hint: "ادخل كلمة المرور"),
        ]),
      ),
    );
  }
}