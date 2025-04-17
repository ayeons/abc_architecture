import 'package:abc_architecture/board/setting/exports.dart';
import 'package:abc_architecture/component/product/exports.dart';
import 'package:flutter/material.dart';

/// Displays a list of SampleItems.
class ProductListPage extends StatelessWidget {
  const ProductListPage({
    super.key,
    this.items = const [ProductItem(1), ProductItem(2), ProductItem(3)],
  });

  static const routeName = '/';

  final List<ProductItem> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Prouct Items'),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),

      // To work with lists that may contain a large number of items, it’s best
      // to use the ListView.builder constructor.
      //
      // In contrast to the default ListView constructor, which requires
      // building all Widgets up front, the ListView.builder constructor lazily
      // builds Widgets as they’re scrolled into view.
      body: ListView.builder(
        // Providing a restorationId allows the ListView to restore the
        // scroll position when a user leaves and returns to the app after it
        // has been killed while running in the background.
        restorationId: 'sampleItemListView',
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return ProductItemTile(item);
        },
      ),
    );
  }
}
