import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/car_information.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/charging_app_bar.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/charging_car.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/location_information.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/price_information.dart';
import 'package:zaoed/Screens/Finder/screens/charging_statuse/widgets/timer.dart';
import 'package:zaoed/blocs/finder_bloc/finder_bloc.dart';
import 'package:zaoed/constants/colors.dart';

class ChargingStatuesScreen extends StatefulWidget {
  const ChargingStatuesScreen({super.key});

  @override
  _ChargingStatuesScreenState createState() => _ChargingStatuesScreenState();
}

class _ChargingStatuesScreenState extends State<ChargingStatuesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gray9,
      appBar: ChargingAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ChargingCar(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CarInformation(),
                  const SizedBox(
                    height: 8,
                  ),
                  const LocationInformation(),
                  const SizedBox(
                    height: 16,
                  ),
                  const PriceInformation(),
                  const SizedBox(
                    height: 16,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors().gray6,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    width: 350,
                    height: 150,
                    child: BlocBuilder<FinderBloc, FinderState>(
                      builder: (context, state) {
                        return TimerWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
