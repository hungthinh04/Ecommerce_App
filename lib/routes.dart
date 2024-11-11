//Quản lý điều hướng (Navigator)

import 'package:flutter/material.dart';
import 'features/auth/login_screen.dart';
import 'features/home/home_screen.dart';

final Map<String, WidgetBuilder> appRoutes = {
  '/': (context) => HomeScreen(),
  '/login': (context) => LoginScreen(),
};
