
import 'package:elmostaabel_company/view/screens/favorites_screen.dart';
import 'package:elmostaabel_company/view/screens/ticket_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../view/screens/home_screen.dart';
import '../../view/screens/profile_screen.dart';

class Maincontroller extends GetxController {
  RxInt currentIndex = 0.obs;
  final tabs =
      [HomeScreen(), FavoritesScreen(),TicketScreen(), ProfileScreen()].obs;

  
}
