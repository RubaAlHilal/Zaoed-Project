import 'package:zaoed/constants/imports.dart';

class PaymentProcessScreen extends StatefulWidget {
  const PaymentProcessScreen({super.key, required this.type, required this.hour, required this.image});
 final String type;
  final String hour;
  final String image;
  @override
  State<PaymentProcessScreen> createState() => _PaymentProcessScreenState();
}

class _PaymentProcessScreenState extends State<PaymentProcessScreen> {
  int activeStep = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors().gray9,
      appBar: profileScreenAppBar(context, title: 'الدفع'),
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
                  }, type: widget.type, hour: widget.hour, image: widget.image,
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
