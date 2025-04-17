import 'package:abc_architecture/board/product_detail/apperance/product_details_page.dart';
import 'package:abc_architecture/board/product_list/appearance/product_list_page.dart';
import 'package:abc_architecture/board/setting/bridge/settings_controller.dart';
import 'package:abc_architecture/board/setting/appearance/settings_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getMainRouter(SettingsController settingsController) => {
      ProductListPage.routeName: (context) => const ProductListPage(),
      ProductDetailsPage.routeName: (context) => const ProductDetailsPage(),
      SettingsPage.routeName: (context) => SettingsPage(controller: settingsController),
    };
