import 'package:flutter/material.dart';

// String uri = 'http://192.168.18.235:3000';
// String uri = 'http://10.0.2.2:3000';
String uri = 'http://192.168.18.13:3000';

class GlobalVariables {
  // COLORSs
  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xFF373753),
      Color(0xFF373753),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const basecolor = Color.fromARGB(255, 21, 36, 91);

  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = const Color.fromARGB(255, 47, 209, 79);
  static const unselectedNavBarColor = Colors.white;

  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://images-eu.ssl-images-amazon.com/images/G/31/img21/Wireless/WLA/TS/D37847648_Accessories_savingdays_Jan22_Cat_PC_1500.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img2021/Vday/bwl/English.jpg',
    'https://images-eu.ssl-images-amazon.com/images/G/31/img22/Wireless/AdvantagePrime/BAU/14thJan/D37196025_IN_WL_AdvantageJustforPrime_Jan_Mob_ingress-banner_1242x450.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/Symbol/2020/00NEW/1242_450Banners/PL31_copy._CB432483346_.jpg',
    'https://images-na.ssl-images-amazon.com/images/G/31/img21/shoes/September/SSW/pc-header._CB641971330_.jpg',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Trek',
      'image': 'assets/images/helmet.png',
    },
    {
      'title': 'Hike',
      'image': 'assets/images/bicycle-wheel.png',
    },
    {
      'title': 'Photos',
      'image': 'assets/images/gear.png',
    },
    {
      'title': 'Routes',
      'image': 'assets/images/oil.png',
    },
    {
      'title': 'Weather',
      'image': 'assets/images/shock.png',
    },
  ];
}
