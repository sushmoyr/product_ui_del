import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:product_ui_del/controllers/file_controller.dart';
import 'package:product_ui_del/data/models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final FileController _fileController;
  List<Product> productList = [];
  @override
  void initState() {
    _fileController = FileController();
    _fileController.loadProductsFromAssets('assets/data/response.json');
    _fileController.addListener(() {
      setState(() {
        productList = _fileController.productData;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF8F8F8),
        body: Column(
          children: [
            AppBar(
              elevation: 0,
              title: const Text('Product List'),
              centerTitle: true,
              backgroundColor: Colors.transparent,
              foregroundColor: Colors.black,
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.search))
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 14,
                    mainAxisSpacing: 14,
                    childAspectRatio: 0.7,
                  ),
                  itemCount: productList.length,
                  itemBuilder: (ctx, idx) {
                    return ProductCard(product: productList[idx]);
                  },
                ),
              ),
            )
          ],
        ));
  }

  @override
  void dispose() {
    _fileController.dispose();
    super.dispose();
  }
}

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Card(
        elevation: 4,
        shadowColor: Colors.black38,
        child: SizedBox(
          width: constraints.maxWidth,
          height: constraints.maxHeight,
          child: Column(
            children: [
              /*Expanded(flex: 2,child: ,),
              Expanded(flex: 1,child: ,),*/
            ],
          ),
        ),
      );
    });
  }
}
