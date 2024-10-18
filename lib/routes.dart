import 'package:flutter/material.dart';
import 'package:travel/page/detail_hotel.dart';
import 'package:travel/page/detail_pesawat.dart';
import 'package:travel/page/home_page.dart';
import 'package:travel/page/login.dart';

Map<String, WidgetBuilder> appRoutes = {
  '/login': (context) => const LoginPage(),
  '/home': (context) => const HomePage(),
  '/detail': (context) => const DetailTiketPesawat(),
  '/detail-hotel': (context) => const DetailHotel(),
};
