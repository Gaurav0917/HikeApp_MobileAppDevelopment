import 'package:assignmentfinal/core/widgets/bottom_bar.dart';
import 'package:assignmentfinal/features/address/presentation/view/address_screen.dart';
import 'package:assignmentfinal/features/admin/presentation/view/add_product_screen.dart';
import 'package:assignmentfinal/features/auth/presentation/view/auth_login.dart';
import 'package:assignmentfinal/features/auth/presentation/view/auth_register.dart';
import 'package:assignmentfinal/features/home/presentation/view/category_deals_screen.dart';
import 'package:assignmentfinal/features/home/presentation/view/home_screen.dart';
import 'package:assignmentfinal/features/order_details/presentation/view/order_details.dart';
import 'package:assignmentfinal/features/product_details/presentation/view/product_details_screen.dart';
import 'package:assignmentfinal/features/search/presentation/view/search_screen.dart';
import 'package:assignmentfinal/features/order_details/data/model/order.dart';
import 'package:assignmentfinal/features/product_details/domain/entity/product.dart';
import 'package:assignmentfinal/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SplashView(),
      );
    case AuthLogin.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthLogin(),
      );
    case AuthRegister.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AuthRegister(),
      );

    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottomBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottomBar(),
      );
    case AddProductScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const AddProductScreen(),
      );

    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => CategoryDealsScreen(
          category: category,
        ),
      );
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => SearchScreen(
          searchQuery: searchQuery,
        ),
      );
    case ProductDetailScreen.routeName:
      var product = routeSettings.arguments as Product;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => ProductDetailScreen(
          product: product,
        ),
      );
    case AddressScreen.routeName:
      var totalAmount = routeSettings.arguments as String;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => AddressScreen(
          totalAmount: totalAmount,
        ),
      );
    case OrderDetailScreen.routeName:
      var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OrderDetailScreen(
          order: order,
        ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
