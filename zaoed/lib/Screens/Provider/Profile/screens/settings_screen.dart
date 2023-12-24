import 'package:flutter/material.dart';
import 'package:zaoed/Screens/Provider/Profile/screens/AppBar/profail_screens_app_bar.dart';
import 'package:zaoed/Screens/Provider/Profile/screens/ScreensWidgets/custom_switch_list.dart';
import 'package:zaoed/Screens/Provider/Profile/screens/ScreensWidgets/settings_label.dart';
import 'package:zaoed/constants/colors.dart';

// ignore: must_be_immutable
class SettingsScreen extends StatelessWidget {
  SettingsScreen({
    super.key,
  });

  late bool isNotification = false;
  late bool isLogIn = false;
  late bool isDarkMood = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gray9,
      appBar: profileScreenAppBar(context, title: 'الإعدادات'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Container(
          height: 290,
          width: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors().gray6,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                  children: [
                    SettingsLabel(
                      title: 'اللغة',
                      onTap: () {},
                      subTitle: 'العربية',
                    ),
                    Divider(
                      thickness: 1,
                      color: AppColors().gray9,
                    ),
                    SettingsLabel(
                      title: 'حجم الخط',
                      onTap: () {},
                      subTitle: 'متوسط',
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
                color: AppColors().gray9,
              ),
              CustomSwitchListTile(
                title: 'تفعيل الأشعارات',
                value: isNotification,
                onChanged: (value) {},
              ),
              Divider(
                thickness: 1,
                color: AppColors().gray9,
              ),
              CustomSwitchListTile(
                title: 'تسجيل الدخول عبر السمات الحيوية',
                value: isLogIn,
                onChanged: (value) {},
              ),
              Divider(
                thickness: 1,
                color: AppColors().gray9,
              ),
              CustomSwitchListTile(
                title: 'تبديل الوضع النهاري',
                value: isDarkMood,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
