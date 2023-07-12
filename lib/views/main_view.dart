import 'package:flutter/material.dart';
import 'package:kantin_new_mobile/constants/global_constants.dart';
import 'package:badges/badges.dart' as badges;
import 'package:kantin_new_mobile/views/menu_view.dart';
import 'package:kantin_new_mobile/views/past_orders.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

int viewIndex = 0;
const views = [
  MenuView(), // Menu
  PastOrders(), // Past Orders
  MenuView(), // Profile
  MenuView(), // Cart
];

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kantin"),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              icon: const badges.Badge(
                badgeContent: Text(
                  '3',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                badgeStyle: badges.BadgeStyle(
                  badgeColor: mainColorLight,
                ),
                child: Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  viewIndex = 3;
                });
              },
            ),
          ),
        ],
        backgroundColor: mainColor,
      ),
      bottomNavigationBar: BottomAppBar(
        color: mainColor,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => {
                setState(() {
                  viewIndex = 1;
                })
              },
              icon: const Icon(Icons.receipt_long),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () => {
                setState(() {
                  viewIndex = 2;
                })
              },
              icon: const Icon(Icons.person),
              color: Colors.white,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {
          setState(() {
            viewIndex = 0;
          })
        },
        backgroundColor: secondaryColor,
        child: const Icon(Icons.dining),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: views[viewIndex],
    );
  }
}
