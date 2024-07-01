import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/values_manager.dart';
import 'package:shopping_test/screens/categories/widgets/products/product_grid_item.dart';
import 'package:shopping_test/widgets/custom_tap_bar.dart';
import '../../models/item_model.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key, required this.items});
  final List<Item> items;
  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Screen'),
        bottom: CustomTapBar(
          tapController: _tabController,
          onTap: (index) {},
          inScroll: false,
          taps: const [
            'tap 1',
            'tap 2',
            'tap 4',
          ],
        ),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(AppPadding.p16),
        itemCount: widget.items.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: .85,
          crossAxisSpacing: AppSize.s16,
          mainAxisSpacing: AppSize.s16,
        ),
        itemBuilder: (context, index) {
          return ProductGridItem(item: widget.items[index], index: index,);
        },
      ),
    );
  }
}
