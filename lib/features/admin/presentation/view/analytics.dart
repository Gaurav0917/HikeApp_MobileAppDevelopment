import 'package:assignmentfinal/core/widgets/loader.dart';
import 'package:assignmentfinal/features/account/presentation/widget/top_buttons.dart';
import 'package:assignmentfinal/features/admin/domain/entity/sales.dart';
import 'package:assignmentfinal/features/admin/presentation/view_model/admin_services.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final AdminServices adminServices = AdminServices();
  int? totalSales;
  List<Sales>? earnings;

  @override
  void initState() {
    super.initState();
    getEarnings();
  }

  getEarnings() async {
    var earningData = await adminServices.getEarnings(context);
    totalSales = earningData['totalEarnings'];
    earnings = earningData['sales'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return earnings == null || totalSales == null
        ? const Loader()
        : Column(
            children: [
              Text(
                '\$$totalSales',
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TopButtons(),

              // SizedBox(
              //   height: 250,
              //   child: CategoryProductsChart(seriesList: [
              //     charts.Series(
              //       id: 'Sales',
              //       data: earnings!,
              //       domainFn: (Sales sales, _) => sales.label,
              //       measureFn: (Sales sales, _) => sales.earning,
              //     ),
              //   ]),
              // )
            ],
          );
  }
}
