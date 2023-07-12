
import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/views/order_details.dart';

import '../constants/global_constants.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OrderDetails()),
          );
        },
        child: Card(
          shadowColor: mainColor,
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
          child: const Padding(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Sipariş Tarihi:d MMMM yyyy / kk:mm",
                      style: TextStyle(
                        fontSize: 18,
                        color: mainColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: mainColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Divider(
                  thickness: 2,
                ),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Sipariş No",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text("#orderId"),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 3,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Ad",
                            style: TextStyle(color: Colors.grey),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "uName",
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                      VerticalDivider(
                        thickness: 3,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            "Sipariş\nDurumu",
                            style: TextStyle(color: Colors.grey,),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Icon(
                            Icons.check,
                            color: mainColor,
                          ),
                          SizedBox(
                            height: 16,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  goDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const OrderDetails(
        ),
      ),
    );


  }
}

