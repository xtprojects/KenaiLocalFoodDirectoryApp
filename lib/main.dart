import 'package:flutter/material.dart';
import '/pages/akfoodhub.dart';
import '/pages/cottage.dart';
import '/pages/home.dart';
import '/pages/farms.dart';
import '/pages/foodbeverage.dart';
import '/pages/retailstore.dart';
import '/pages/seafood.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
      routes: {
        '/farms': (context) => Farms(),
        '/foodbeverage': (context) => FoodBeverage(),
        '/cottage': (context) => CottageEnterprises(),
        '/akfoodhub': (context) => AlaskaFoodHub(),
        '/retailstore': (context) => RetailStores(),
        '/seafood': (context) => Seafood(),
      },
  ));
}
