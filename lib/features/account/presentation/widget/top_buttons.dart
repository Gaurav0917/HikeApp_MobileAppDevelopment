import 'package:assignmentfinal/features/account/presentation/view_model/account_services.dart';
import 'package:assignmentfinal/features/account/presentation/widget/account_button.dart';
import 'package:flutter/material.dart';

class TopButtons extends StatelessWidget {
  const TopButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(
              text: 'Your Tours',
              onTap: () {},
            ),
            AccountButton(
              text: 'Popular Hike',
              onTap: () {},
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(
              text: 'Log Out',
              onTap: () => AccountServices().logOut(context),
            ),
            AccountButton(
              text: 'Your Trek List',
              onTap: () {},
            ),
          ],
        ),
      ],
    );
  }
}
