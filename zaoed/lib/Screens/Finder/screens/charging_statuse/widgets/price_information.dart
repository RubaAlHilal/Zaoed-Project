import 'package:zaoed/blocs/actions_bloc/actions_bloc.dart';
import 'package:zaoed/constants/imports.dart';

class PriceInformation extends StatelessWidget {
  const PriceInformation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ActionsBloc>();
    return Container(
      height: 70,
      width: 349,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8), color: AppColors().gray6),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                'lib/assets/icons/price.png',
                width: 24,
                height: 24,
              ),
              const SizedBox(width: 8),
              Text(
                'السعر',
                style: TextStyle(fontSize: 16, color: AppColors().white),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              const SizedBox(
                width: 16,
              ),
              Text(
                'رسوم الشحن',
                style: TextStyle(fontSize: 14, color: AppColors().gray),
              ),
              const Spacer(),
              Text(
                '${bloc.price} ريال',
                style: TextStyle(fontSize: 14, color: AppColors().white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
