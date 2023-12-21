
import 'package:flutter/material.dart';
import 'package:zaoed/Provider/Screens/Profile/screens/ScreensWidgets/personal_information_label.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/finder/Profile/screens/ScreensWidgets/legal_affairs_lable.dart';

class PersonalContainer extends StatelessWidget {
  const PersonalContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 336,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppColors().gray6,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                PersonalInformationLabel(
                  title: 'الأسم',
                  onTap: () {},
                  subTitle: 'علي محمد',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                PersonalInformationLabel(
                  title: 'تاريخ الميلاد',
                  onTap: () {},
                  subTitle: '28/04/1999',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                PersonalInformationLabel(
                  title: 'الجنس',
                  onTap: () {},
                  subTitle: 'ذكر',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                PersonalInformationLabel(
                  title: 'رقم الجوال',
                  onTap: () {},
                  subTitle: '0507625994',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                PersonalInformationLabel(
                  title: 'البريد الإلكتروني',
                  onTap: () {},
                  subTitle: 'ًExample@gmail.com',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                PersonalInformationLabel(
                  title: "كلمة المرور",
                  onTap: () {},
                  subTitle: '00000000',
                ),
                Divider(
                  thickness: 1,
                  color: AppColors().gray9,
                ),
                LegalAffairsLable(
                  title: 'حذف الحساب',
                  onTap: () {},
                )
              ],
            )),
      ],
    );
  }
}