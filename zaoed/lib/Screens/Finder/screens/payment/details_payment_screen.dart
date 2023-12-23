
import 'package:flutter/material.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/booking_data_container.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/booking_price_container.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/location_details.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/title_label.dart';
import 'package:zaoed/components/button_widget.dart';
import 'package:zaoed/constants/colors.dart';

class DetailsPaymentScreen extends StatelessWidget {
  final Function() onTap;

  DetailsPaymentScreen({
    required this.onTap,
  });

  late int discount = 3;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleLabel(
          title: 'بيانات الحجز',
        ),
        BookingDataContainer(),
        const TitleLabel(
          title: 'موقع الحجز',
        ),
        const LocationDetails(),
        const TitleLabel(
          title: 'سعر الحجز',
        ),
        BookingPriceContainer(discount: discount),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ButtonWidget(
            textEntry: 'التالي',
            backColor: AppColors().green,
            onPress: onTap,
            textColor: AppColors().white,
          ),
        ),
      ],
    );
  }
}