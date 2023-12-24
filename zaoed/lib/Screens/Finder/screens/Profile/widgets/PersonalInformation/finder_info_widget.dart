import 'package:flutter/material.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/screens/ScreensWidgets/information_screen.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/screens/car_screen.dart';
import 'package:zaoed/Screens/Finder/screens/Profile/widgets/information_lable.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/extensions/navigator.dart';

class FinderInfoWidget extends StatelessWidget {
  const FinderInfoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColors().gray6,
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        InfoLabelWidget(
          imageIcon: 'lib/assets/icons/person1.png',
          title: 'البيانات الشخصية',
          onTap: () {
            context.push(view: const InformationScreen());
          },
        ),
        Divider(
          color: AppColors().black,
        ),
        InfoLabelWidget(
          imageIcon: 'lib/assets/icons/bolt.car.png',
          title: ' بيانات السيارة',
          onTap: () {
            context.push(view: const CarScreen());
          },
        ),
      ]),
    );
  }
}
