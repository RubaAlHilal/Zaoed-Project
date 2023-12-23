
import 'package:flutter/material.dart';
import 'package:zaoed/constants/colors.dart';

class LocationInformation extends StatelessWidget {
  const LocationInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 69,
      width: 349,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors().gray6),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset('lib/assets/icons/pin_logo.png'),
              SizedBox(width: 8),
              Text(
                'منزل ايلاف محمد',
                style: TextStyle(
                    fontSize: 16, color: AppColors().white),
              ),
              SizedBox(width: 8),
              Image.asset('lib/assets/icons/Star.png'),
              SizedBox(width: 4),
              Text(
                '5.0',
                style: TextStyle(
                    fontSize: 14, color: AppColors().white),
              ),
              SizedBox(width: 4),
              Text(
                '(50)',
                style: TextStyle(
                    fontSize: 12, color: AppColors().gray),
              ),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'حي النرجس',
            style:
                TextStyle(fontSize: 14, color: AppColors().gray),
          ),
        ],
      ),
    );
  }
}
