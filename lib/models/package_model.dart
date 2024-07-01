import 'package:flutter/cupertino.dart';

class PackageModel{
  final ImageProvider? image;
  final String itemName;
  final double price;
  final int bundle;

  PackageModel({required this.itemName, required this.price, required this.bundle, this.image});

}