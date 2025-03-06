import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:assignmentfinal/config/global_variables.dart';
import 'package:assignmentfinal/core/provider/user_provider.dart';
import 'package:assignmentfinal/features/cart/presentation/view/cart_screen.dart';
import 'package:assignmentfinal/features/home/presentation/view/home_screen.dart';
import 'package:assignmentfinal/features/account/presentation/view/account_screen.dart';

class BottomBar extends StatefulWidget {
  static const String routeName = '/actual-home';
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _page = 0;
  double bottomBarWidth = 42;
  double bottomBarBorderWidth = 5;

  List<Widget> pages = [
    const HomeScreen(),
    const CartScreen(),
    const AccountScreen(),
  ];

  void updatePage(int page) {
    setState(() {
      _page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    final userCartLen = context.watch<UserProvider>().user.cart.length;

    return Scaffold(
      body: pages[_page],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _page,
        selectedItemColor: GlobalVariables.selectedNavBarColor,
        unselectedItemColor: GlobalVariables.unselectedNavBarColor,
        backgroundColor: GlobalVariables.basecolor,
        iconSize: 28,
        onTap: updatePage,
        items: [
          // HOME
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 0
                        ? GlobalVariables.basecolor
                        : GlobalVariables.basecolor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.home_outlined,
              ),
            ),
            label: 'Home',
          ),
          // ACCOUNT

          // CART
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 1
                        ? GlobalVariables.basecolor
                        : GlobalVariables.basecolor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.shopping_cart_outlined,
              ),
              // child: badges.Badge(
              //   // Use the alias 'badges' for the Badge widget
              //   elevation: 0,
              //   // badgeContent: const Text(),
              //   badgeColor: Colors.white,
              //   child: const Icon(
              //     Icons.shopping_cart_outlined,
              //   ),
              // ),
            ),
            label: 'Booking',
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: bottomBarWidth,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: _page == 2
                        ? GlobalVariables.basecolor
                        : GlobalVariables.basecolor,
                    width: bottomBarBorderWidth,
                  ),
                ),
              ),
              child: const Icon(
                Icons.person_outline_outlined,
              ),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
