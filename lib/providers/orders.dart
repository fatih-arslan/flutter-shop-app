import 'package:flutter/material.dart';

//import '../widgets/cart_item.dart';
import './cart.dart' as c;

class OrderItem {
  final String id;
  final double amount;
  final List<c.CartItem> products;
  final DateTime dateTime;

  OrderItem(
      {required this.id,
      required this.amount,
      required this.products,
      required this.dateTime});
}

class Orders with ChangeNotifier {
  final List<OrderItem> _orders = [];

  List<OrderItem> get orders {
    return [..._orders];
  }

  void addOrder(List<c.CartItem> products, double total) {
    _orders.insert(
        0,
        OrderItem(
            id: DateTime.now().toString(),
            amount: total,
            products: products,
            dateTime: DateTime.now()));
    notifyListeners();
  }
}
