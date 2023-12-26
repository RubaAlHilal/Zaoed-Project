import 'package:flutter/material.dart';
import 'package:zaoed/Screens/Finder/screens/Booking/widgets/booking_charging_information.dart';
import 'package:zaoed/Screens/Finder/screens/Booking/widgets/booking_charging_time_information.dart';
import 'package:zaoed/Screens/Finder/screens/Booking/widgets/booking_location_information.dart';
import 'package:zaoed/Screens/Finder/screens/payment/payment_process_screen.dart';
import 'package:zaoed/Screens/Provider/Profile/screens/AppBar/profail_screens_app_bar.dart';
import 'package:zaoed/components/button_widget.dart';
import 'package:zaoed/constants/colors.dart';
import 'package:zaoed/extensions/navigator.dart';
class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gray9,
      appBar: profileScreenAppBar(context, title: 'تأكيد الحجز'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Container(
              height: 267,
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: AppColors().gray6),
              child: const Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 24, vertical: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BookingLocationInformation(),
                      BookingChargingInformation(),
                      BookingChargingTimeInformation(),
                    ]),
              ),
            ),
            const Spacer(),
            ButtonWidget(
                textEntry: 'تأكيد',
                backColor: AppColors().green,
                onPress: () {
                  context.push(view: const PaymentProcessScreen());
                },
                textColor: AppColors().white)
          ],
        ),
      ),
    );
  }
}
