import 'package:abc_architecture/board/product_detail/apperance/product_details_page.dart';
import 'package:abc_architecture/component/product/data/product_item.dart';
import 'package:flutter/material.dart';

class ProductItemTile extends StatelessWidget {
  const ProductItemTile(this._item);

  final ProductItem _item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('SampleItem ${_item.id}'),
      leading: const CircleAvatar(
        // Display the Flutter Logo image asset.
        foregroundImage: AssetImage('assets/images/flutter_logo.png'),
      ),
      onTap: () {
        // Navigate to the details page. If the user leaves and returns to
        // the app after it has been killed while running in the
        // background, the navigation stack is restored.
        Navigator.restorablePushNamed(
          context,
          ProductDetailsPage.routeName,
        );
      },
    );
  }
}
