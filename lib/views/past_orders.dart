import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/widgets/order.dart';

class PastOrders extends StatefulWidget {
  const PastOrders({super.key});

  @override
  State<PastOrders> createState() => _PastOrdersState();
}

class _PastOrdersState extends State<PastOrders> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Order(),
          Order(),

        ],
      ),
    );
  }
}