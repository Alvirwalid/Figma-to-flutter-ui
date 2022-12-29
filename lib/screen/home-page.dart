import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:test/widget/textwidget.dart';

class HomePageScreen extends StatelessWidget {
  HomePageScreen({super.key});

  List<Map<String, dynamic>> serviceList = [
    {
      'imageUrl': './assets/images/pickup_request1.png',
      'title': 'Pickup Request'
    },
    {
      'imageUrl': './assets/images/express_delevary1.png',
      'title': 'Express Delivery'
    },
    {'imageUrl': './assets/images/pickup_drop1.png', 'title': 'Pick & Drop'},
    {'imageUrl': './assets/images/fraud_check1.png', 'title': 'Fraud Check'},
    {'imageUrl': './assets/images/tracking1.png', 'title': 'Tracking'},
    {'imageUrl': './assets/images/percel1.png', 'title': 'Parcels'},
    {'imageUrl': './assets/images/payment1.png', 'title': 'payments'},
    {'imageUrl': './assets/images/customer-service1.png', 'title': 'Support'},
    {'imageUrl': './assets/images/ticket1.png', 'title': 'Tickets'},
    {'imageUrl': './assets/images/stats1.png', 'title': 'Stats'},
  ];
  List<Map<String, dynamic>> summeryList = [
    {'imageUrl': './assets/images/summary1.png', 'title': 'Summary'},
    {
      'imageUrl': './assets/images/pickup_points1.png',
      'title': 'Pick up points'
    },
    {'imageUrl': './assets/images/coverage1.png', 'title': 'Coverages'},
    {'imageUrl': './assets/images/pricing1.png', 'title': 'Pricing'},
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xffEFEEEE),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              const Icon(
                Icons.location_on,
                color: Colors.grey,
              ),
              Text(
                'Current Location',
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inknut',
                    color: Colors.grey.withOpacity(0.7)),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.grey,
              )
            ],
          ),
          actions: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    './assets/images/Vector.png',
                    height: 25,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    width: 6,
                  ),
                  const Text(
                    '100 PTS',
                    style: TextStyle(color: Color(0xffF81010)),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 4,
            ),
            const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            const SizedBox(
              width: 4,
            ),
            const CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              width: 8,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff7A2F5C),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        './assets/images/pay.png',
                        width: 30,
                        height: 30,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      TextWidget(
                          text: 'Pay with credit', color: Colors.white, fs: 9),
                      const Spacer(),
                      TextWidget(
                          text: 'Fast & Safer cashless pament',
                          color: Colors.white,
                          fs: 9),
                      const Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: Colors.white,
                        size: 16,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  elevation: 10,
                  child: Container(
                    //  height: 100,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1, color: Colors.black)),
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              side: BorderSide(width: 2, color: Colors.red),
                              elevation: 0,
                              primary: Colors.white),
                          onPressed: () {},
                          child: TextWidget(
                            text: 'Check Balance',
                            color: Colors.black,
                            fs: 18,
                            isTitle: true,
                          )),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.03,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 8),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // TextWidget(
                          //     text: 'Services',
                          //     color: Color(0xff7A2F5C),
                          //     fs: 16),
                          GridView.builder(
                            // scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: serviceList.length,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              // childAspectRatio: 20,
                              crossAxisCount: 5,
                            ),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.symmetric(horizontal: 6),
                                // height: 200,
                                // width: 100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      "${serviceList[index]['imageUrl']}",
                                      width: 30,
                                      height: 30,
                                      fit: BoxFit.cover,
                                    ),
                                    TextWidget(
                                        text: serviceList[index]['title'],
                                        color: Colors.black,
                                        fs: 6)
                                  ],
                                ),
                              );
                            },
                          )
                        ],
                      )),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                Container(
                  height: 100,
                  //color: Colors.amber,
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        width: 15,
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  width: 6, color: Color(0xffFFA132))),
                          child: const CircleAvatar(
                            radius: 30,
                            backgroundColor: Color(0xffFF0000),
                            child: Text(
                              'offer',
                              style: TextStyle(color: Colors.black),
                            ),
                          ));
                    },
                  ),
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                Card(
                  elevation: 10,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: 15,
                        );
                      },
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return FittedBox(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                "${summeryList[index]['imageUrl']}",
                                width: 30,
                                height: 30,
                                fit: BoxFit.cover,
                              ),
                              TextWidget(
                                  text: summeryList[index]['title'],
                                  color: Colors.black,
                                  fs: 6)
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ),
                // Container(
                //   width: double.infinity,
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(10)),
                //   height: 100,
                //   //color: Colors.amber,
                //   child: Center(
                //     child: ListView.separated(
                //       separatorBuilder: (context, index) {
                //         return const SizedBox(
                //           width: 15,
                //         );
                //       },
                //       scrollDirection: Axis.horizontal,
                //       shrinkWrap: true,
                //       physics: NeverScrollableScrollPhysics(),
                //       itemCount: 4,
                //       itemBuilder: (context, index) {
                //         return Container(
                //           margin: EdgeInsets.symmetric(horizontal: 6),
                //           // height: 200,
                //           // width: 100,
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Image.asset(
                //                 "${summeryList[index]['imageUrl']}",
                //                 width: 30,
                //                 height: 30,
                //                 fit: BoxFit.cover,
                //               ),
                //               TextWidget(
                //                   text: summeryList[index]['title'],
                //                   color: Colors.black,
                //                   fs: 6)
                //             ],
                //           ),
                //         );
                //       },
                //     ),
                //   ),
                // )
              ],
            ),
          ),
        ));
  }
}
