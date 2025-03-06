import 'package:assignmentfinal/features/account/presentation/widget/below_app_bar.dart';
import 'package:assignmentfinal/features/account/presentation/widget/orders.dart';
import 'package:assignmentfinal/features/account/presentation/widget/top_buttons.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
                // gradient: GlobalVariables.appBarGradient,
                color: Color.fromARGB(255, 21, 36, 91)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                // alignment: Alignment.topLeft,

                child: Text('Hike Nepal',
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic)),
                // color: Colors.black,
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.notifications_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: const Column(
        children: [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButtons(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
