import 'package:flutter/material.dart';

/// Displays detailed information about a SampleItem.
class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  static const routeName = '/product_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: const Center(
        child: Text('More Information Here'),
      ),
    );
  }
}
