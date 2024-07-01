import 'dart:math';

import 'package:shopping_test/core/helper/helper.dart';
import 'package:shopping_test/models/cart_model.dart';

import '../../models/category_model.dart';
import '../../models/item_model.dart';
import '../../models/offer_card_model.dart';
import '../../models/package_model.dart';

class Const {
  static List<OfferCardModel> offers = [
    OfferCardModel(offer: 50, orderCount: 30),
    OfferCardModel(offer: 70, orderCount: 3),
    OfferCardModel(offer: 20, orderCount: 3),
    OfferCardModel(offer: 25, orderCount: 17),
    OfferCardModel(offer: 50, orderCount: 3),
    OfferCardModel(offer: 50, orderCount: 19),
    OfferCardModel(offer: 30, orderCount: 3),
    OfferCardModel(offer: 90, orderCount: 1),
    OfferCardModel(offer: 50, orderCount: 10),
  ];

  static List<PackageModel> packages = [
    PackageModel(itemName: 'Orange Package 1', price: 325.00, bundle: 1),
    PackageModel(itemName: 'Green Tea Package 2', price: 89.00, bundle: 1),
    PackageModel(itemName: 'Apple Package 1', price: 150.00, bundle: 2),
    PackageModel(itemName: 'Banana Package 3', price: 60.00, bundle: 3),
    PackageModel(itemName: 'Grapes Package 1', price: 220.00, bundle: 1),
    PackageModel(itemName: 'Strawberry Package 2', price: 300.00, bundle: 2),
    PackageModel(itemName: 'Blueberry Package 1', price: 400.00, bundle: 1),
    PackageModel(itemName: 'Mango Package 3', price: 280.00, bundle: 3),
    PackageModel(itemName: 'Pineapple Package 1', price: 190.00, bundle: 1),
    PackageModel(itemName: 'Watermelon Package 2', price: 170.00, bundle: 2),
    PackageModel(itemName: 'Papaya Package 1', price: 110.00, bundle: 1),
    PackageModel(itemName: 'Peach Package 3', price: 210.00, bundle: 3),
  ];
  static List<Item> items = [
    Item(
        price: 10.0,
        name: 'Item 1',
        annotation: 'Annotation 1',
        unit: 'kg',
        offer: 5.0),
    Item(
        price: 20.0,
        name: 'Item 2',
        annotation: 'Annotation 2',
        unit: 'kg',
        offer: 10.0),
    Item(
        price: 30.0,
        name: 'Item 3',
        annotation: 'Annotation 3',
        unit: 'kg',
        offer: 15.0),
    Item(price: 40.0, name: 'Item 4', annotation: 'Annotation 4', unit: 'kg'),
    Item(price: 50.0, name: 'Item 5', annotation: 'Annotation 5', unit: 'kg'),
    Item(price: 60.0, name: 'Item 6', annotation: 'Annotation 6', unit: 'kg'),
    Item(price: 70.0, name: 'Item 7', annotation: 'Annotation 7', unit: 'kg'),
    Item(price: 80.0, name: 'Item 8', annotation: 'Annotation 8', unit: 'kg'),
    Item(price: 90.0, name: 'Item 9', annotation: 'Annotation 9', unit: 'kg'),
    Item(
        price: 100.0, name: 'Item 10', annotation: 'Annotation 10', unit: 'kg'),
    Item(
        price: 110.0, name: 'Item 11', annotation: 'Annotation 11', unit: 'kg'),
    Item(
        price: 120.0, name: 'Item 12', annotation: 'Annotation 12', unit: 'kg'),
  ];

  static List<CategoryModel> categoryList = [
    CategoryModel(
      title: 'Category 1',
      subTitle: 'SubTitle 1',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 2',
      subTitle: 'SubTitle 2',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 3',
      subTitle: 'SubTitle 3',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 4',
      subTitle: 'SubTitle 4',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 5',
      subTitle: 'SubTitle 5',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 6',
      subTitle: 'SubTitle 6',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 7',
      subTitle: 'SubTitle 7',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 8',
      subTitle: 'SubTitle 8',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 9',
      subTitle: 'SubTitle 9',
      items: ListHelper.generateRandomItems(),
    ),
    CategoryModel(
      title: 'Category 10',
      subTitle: 'SubTitle 10',
      items: ListHelper.generateRandomItems(),
    ),
  ];
  static List<CartItem> cart = [];
  static addToCart(CartItem newItem){
    bool exsist=false;
   for(var e in cart){
     if(e.itemIndex== newItem.itemIndex){
       e.quantity+=newItem.quantity;
       exsist=true;
     }
   }
   if(!exsist)
   cart.add(newItem);

  }
}
