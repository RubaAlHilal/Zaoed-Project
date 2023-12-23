import 'package:flutter/material.dart';
import 'package:zaoed/Screens/Finder/screens/payment/bill_screen.dart';
import 'package:zaoed/Screens/Finder/screens/payment/details_payment_screen.dart';
import 'package:zaoed/Screens/Finder/screens/payment/purchase_screen.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/booking_data_container.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/booking_price_container.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/location_details.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/progress_bar.dart';
import 'package:zaoed/Screens/Finder/screens/payment/widgets/title_label.dart';
import 'package:zaoed/Screens/Provider/Profile/screens/AppBar/profail_screens_app_bar.dart';

import 'package:zaoed/components/button_widget.dart';
import 'package:zaoed/constants/colors.dart';

class PaymentProcessScreen extends StatefulWidget {
  const PaymentProcessScreen({super.key});

  @override
  State<PaymentProcessScreen> createState() => _PaymentProcessScreenState();
}

class _PaymentProcessScreenState extends State<PaymentProcessScreen> {
  int activeStep = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gray9,
      appBar: ProfileScreenAppBar(context, title: 'الدفع'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProgressBar(progress: 0.2, activeStep: activeStep),
              if (activeStep == 0) ...[
                DetailsPaymentScreen(
                  onTap: () {
                    setState(() {
                      activeStep = 1;
                    });
                  },
                ),
              ],
              if (activeStep == 1) ...[
                PurchaseScreen(
                  onTap: () {
                    setState(() {
                      activeStep = 2;
                    });
                  },
                ),
              ],
              if (activeStep == 2) ...[
                BillScreen(
                  onTap: () {
                    setState(() {
                      activeStep = 3;
                    });
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}