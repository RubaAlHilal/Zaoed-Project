import 'package:zaoed/constants/imports.dart';

// ignore_for_file: must_be_immutable

class DetailsPaymentScreen extends StatelessWidget {
  DetailsPaymentScreen({
    super.key,
    required this.onTap,
  });
  final Function() onTap;
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
