import 'package:flutter/material.dart';
import 'package:jnshop/presentation/widgets/detailwidget/custom_sliver_appBar.dart';
import 'package:jnshop/presentation/widgets/detailwidget/product_details.dart';

class ProductPage extends StatefulWidget {
  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSliverAppBar(),
          SliverToBoxAdapter(
            child: ProductDetails(),
          ),
        ],
      ),
    );
  }
}
