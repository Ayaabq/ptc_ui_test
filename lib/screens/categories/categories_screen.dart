import 'package:flutter/material.dart';
import 'package:shopping_test/screens/categories/widgets/categories_app_bar.dart';
import 'package:shopping_test/screens/categories/widgets/categories_grid.dart';
import 'package:shopping_test/screens/categories/widgets/products/product_list_item.dart';
import 'package:shopping_test/widgets/custom_tap_bar.dart';
import '../../core/consts/const.dart';
import '../../core/utils/values_manager.dart';
import '../../models/item_model.dart';
import '../../widgets/custom_sliver_app_bar.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  bool isGrid= true;
  int chosenCategory = 0;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: Const.categoryList.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    List<Item> chosenItems = Const.categoryList[chosenCategory].items
        .map(
          (e) => Const.items[e],
        )
        .toList();
    List<Widget> content= [const CategoriesGrid()];
    if(!isGrid){
      content=  [CustomTapBar(
        inScroll: true,
        tapController: _tabController,
        taps: Const.categoryList.map((e) => e.title).toList(),
        onTap: (index){ setState(() {
          chosenCategory=index;
        });},
      ),
        SliverList.separated(
        itemCount: chosenItems.length,
        itemBuilder: (context, index) {
          return ProductListItem(item: chosenItems[index]);
        },
        separatorBuilder: (_, __) => const SizedBox(
          height: AppSize.s10,
        ),
      ),];
    }
    return CustomScrollView(
      slivers: [
         CustomSliverAppBar(
          haveSearch: true,
          child: CategoriesAppBar(
            onChange: (v){ setState(() {
              isGrid =!isGrid;
            });},
          ),
        ),

        ...content,
        const SliverToBoxAdapter(
          child: SizedBox(
            height: AppSize.s70,
          ),
        ),
      ],
    );
  }
}
