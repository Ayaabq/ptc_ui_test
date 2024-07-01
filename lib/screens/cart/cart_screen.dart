import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopping_test/core/utils/color_manager.dart';
import 'package:shopping_test/core/utils/style_maneger.dart';
import 'package:shopping_test/screens/cart/widgets/cart_checkout.dart';
import 'package:shopping_test/screens/cart/widgets/cart_item.dart';
import 'package:shopping_test/widgets/custom_sliver_app_bar.dart';

import '../../core/consts/const.dart';
import '../../models/cart_model.dart';




class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
   _ShoppingCartScreenState createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  final List<String> items = List<String>.generate(20, (i) => 'Item $i');
  bool showFullList = false;
  final ScrollController _scrollController = ScrollController();

  void _showMore() {
    setState(() {
      showFullList = true;
    });
    _scrollController.animateTo(
      _scrollController.position.minScrollExtent + 200,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(

        children: [
          CustomScrollView(
            controller: _scrollController,
            physics: showFullList?null:const NeverScrollableScrollPhysics(),
            slivers: [

              CustomSliverAppBar(haveSearch: false,
              color: ColorManager.secondaryColor,
              title: "Shopping Cart", child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('OFF!!',
                  style: StyleManage.appBarUserNames22w600(),),
                  const Text('25% ',
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.w900,
                  color: ColorManager.whiteColor),),

                ],
              ),),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    if (!showFullList && index >= 7) {
                      return const SizedBox();
                    }
                    return
                      ShoppingCartItem(onIncrease: (){
                        setState(() {
                          Const.addToCart(CartItem(itemIndex: Const.cart[index].itemIndex, quantity: 1));
                        });
                      }, onDecrease: (){
                        setState(() {
                          Const.addToCart(CartItem(itemIndex: Const.cart[index].itemIndex, quantity: -1));

                        });
                      },
                          cartItem:
                          Const.cart[index]
                      );
                  },
                  childCount: showFullList ? Const.cart.length : min(Const.cart.length, 7),
                ),
              ),
              const SliverToBoxAdapter(
                child:SizedBox(
                  height: 170,
                ) ,
              ),
            ],
          ),
          CartCheckout(haveMore: !showFullList && Const.cart.length>7,
            onMore: _showMore,
          )
        ],
      ),
    );
  }
}


