import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:test/screen/home-page.dart';
import 'package:test/screen/offers.dart';
import 'package:test/screen/orders.dart';
import 'package:test/screen/shop.dart';
import 'package:test/widget/textwidget.dart';

class BottomScreen extends StatefulWidget {
  const BottomScreen({super.key});

  @override
  State<BottomScreen> createState() => _BottomScreenState();
}

class _BottomScreenState extends State<BottomScreen> {
  int selectesindex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const OffersPage(), 'title': 'HomeScreen'},
    {'page': HomePageScreen(), 'title': 'CategoriesScreen'},
    {'page': const Shoppage(), 'title': 'CartScreen'},
    {'page': const ordersPage(), 'title': 'UserScreen'},
  ];
  void selectedpage(int index) {
    setState(() {
      selectesindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _pages[selectesindex]['page'],
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(10),
          child: Card(
            elevation: 10,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: FittedBox(
                child: Row(
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 0;
                        });
                      },
                      child: Row(
                        children: [
                          Image.asset('./assets/images/btmmenu.png'),
                          TextWidget(
                              text: 'Offers', color: Colors.black, fs: 12)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 1;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(
                            Icons.home,
                            color: selectesindex == 1
                                ? Color(0xffFF0000)
                                : Colors.black,
                          ),
                          TextWidget(
                              text: 'Home',
                              color: selectesindex == 1
                                  ? Color(0xffFF0000)
                                  : Colors.black,
                              fs: 12)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 2;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(Icons.shop),
                          TextWidget(text: 'Shop', color: Colors.black, fs: 12)
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          selectesindex = 3;
                        });
                      },
                      child: Row(
                        children: [
                          Icon(IconlyLight.bag2),
                          TextWidget(
                              text: 'Orders', color: Colors.black, fs: 12)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
