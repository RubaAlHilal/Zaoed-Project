import 'package:flutter/material.dart';
import 'package:zaoed/constants/colors.dart';

class LocationDetails extends StatelessWidget {
  const LocationDetails({
    super.key,
    required this.locationName,
    required this.locationDetails,
  });
  final String locationName;
  final String locationDetails;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        width: 350,
        height: 99,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColors().gray6,
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 20, left: 22, right: 21, bottom: 23),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    locationName,
                    style: TextStyle(color: AppColors().white, fontSize: 18),
                  ),
                  const Spacer(),
                  Text(
                    locationDetails,
                    style: TextStyle(color: AppColors().white),
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
              const Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Image.asset('lib/assets/icons/edit.png')),
                  const Spacer(),
                  InkWell(
                      onTap: () {},
                      child: Image.asset('lib/assets/icons/delete.png'))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}