import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class KalkulatorDuitController extends GetxController {
  TextEditingController initialInvestmentController = TextEditingController();
  TextEditingController investmentDurationController = TextEditingController();
  TextEditingController monthlyInvestmentController = TextEditingController();
  TextEditingController interestRateController = TextEditingController();
  TextEditingController taxRateController = TextEditingController();
  TextEditingController cjenis = TextEditingController();
  TextEditingController chasil = TextEditingController();

  void calculateInvestmentResult() {
    double initialInvestment =
        double.parse(initialInvestmentController.text.replaceAll(',', ''));
    double monthlyInvestment =
        double.parse(monthlyInvestmentController.text.replaceAll(',', ''));
    double annualInterestRate =
        (double.parse(interestRateController.text) / 100) / 12;
    double taxRate = 9 / 100;
    int investmentDurationMonths =
        int.parse(investmentDurationController.text) * 12;

    double growth = 0;
    double totalgrowth = 0;
    double currentInvestment = initialInvestment;

    // var total = (currentInvestment + monthlyInvestment) *
    //     annualInterestRate *
    //     (100 / 100 - taxRate);

    for (int i = 0; i <= investmentDurationMonths; i++) {
      growth = currentInvestment * annualInterestRate * (1 - taxRate);
      totalgrowth += growth;
      currentInvestment += growth + monthlyInvestment;
    }
    print('initial $initialInvestment');
    print('monthly $monthlyInvestment');
    print('duration $investmentDurationMonths');
    print('anual $annualInterestRate');
    print('taxRate $taxRate');
    print('-----');
    print('current $currentInvestment');
    print('total pertambahan $totalgrowth');
    print('growth $growth');

    Get.dialog(
      AlertDialog(
        title: Text('Investment Result'),
        content: Text(
            'Total Investment Result: Rp ${currentInvestment.toStringAsFixed(2)}'),
        actions: [
          TextButton(
            onPressed: () => Get.back(),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }
}
