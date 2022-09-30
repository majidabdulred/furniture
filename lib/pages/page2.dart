import 'package:flutter/material.dart';
import 'package:furniture/constants/AppColors.dart';
import 'package:furniture/constants/Dim.dart';
import 'package:furniture/controller/page2b_control.dart';
import 'package:furniture/pages/page3.dart';
import 'package:furniture/pages/page4.dart';
import 'package:furniture/views/TextWidgets.dart';
import 'package:get/get.dart';

class Page2b extends StatelessWidget {
  MyTabController myTabController = Get.put(MyTabController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 150 * Dim.h1,
        flexibleSpace: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 0 * Dim.w1, top: 76 * Dim.h1),
            alignment: Alignment.topLeft,
            child: FutureKing()),
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        leading: Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: 10 * Dim.w1),
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu,
              color: AppColor.black,
              size: 30,
            ),
          ),
        ),
        actions: [Container(
          alignment: Alignment.topRight,
          padding: EdgeInsets.only(right: 10 * Dim.w1),
          child: IconButton(
            onPressed: () {
              Get.to(Page4());
            },
            icon: Icon(
              Icons.shopping_cart,
              color: AppColor.black,
              size: 30,
            ),
          ),
        )],
      ),
      body: Container(
          padding: EdgeInsets.only(
            // left: 30 * Dim.w1,
            top: 29 * Dim.h1,
            // right: 30 * Dim.w1,
          ),
          alignment: Alignment.topLeft,
          height: double.maxFinite,
          decoration: BoxDecoration(
            color: AppColor.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(60 * Dim.w1),
              topRight: Radius.circular(60 * Dim.w1),
            ),
          ),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(left: 30 * Dim.w1),
              child: Text(
                "Best Furniture",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w900, fontSize: Dim.w1 * 36, color: Colors.white),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30 * Dim.w1),
              child: Text(
                "Perfect Choice!",
                style: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: Dim.w1 * 24, color: Colors.white),
              ),
            ),
            SizedBox(
              height: 17 * Dim.h1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 30 * Dim.w1, right: 30 * Dim.w1),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: Dim.h1 * 36,
                        width: Dim.w1 * 312,
                        child: TextField(
                          readOnly: true,
                          onTap: (() {
                            showSearch(context: context, delegate: CustomSeachDelegate());
                          }),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.zero,
                            fillColor: AppColor.grey,
                            filled: true,
                            hintText: "Find Your Furniture",
                            hintStyle: TextStyle(
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w400,
                                fontSize: Dim.w1 * 16,
                                color: Color.fromARGB(70, 0, 0, 0)),
                            prefixIconConstraints: BoxConstraints(maxWidth: 50),
                            prefixIcon: Container(
                              padding: EdgeInsets.only(left: 6 * Dim.w1, right: 10 * Dim.w1),
                              child: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 25 * Dim.w1,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15 * Dim.h1),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15 * Dim.h1),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15 * Dim.h1),
                              borderSide: BorderSide(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                      padding: EdgeInsets.zero,
                      alignment: Alignment.center,
                      height: 36 * Dim.h1,
                      width: 36 * Dim.h1,
                      decoration: BoxDecoration(
                        color: AppColor.yellow,
                        borderRadius: BorderRadius.circular(9 * Dim.w1),
                      ),
                      child: IconButton(
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          alignment: Alignment.center,
                          icon: Icon(Icons.tune, color: Colors.black, size: 25 * Dim.w1)))
                ],
              ),
            ),
            SizedBox(
              height: 26 * Dim.h1,
            ),
            Padding(
              padding: EdgeInsets.only(left: 25 * Dim.w1, right: 30 * Dim.w1),
              child: SizedBox(
                // color: Color.fromARGB(255, 42, 42, 42),
                height: 40 * Dim.h1,
                child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                    labelPadding: EdgeInsets.only(left: 5, right: 5),
                    isScrollable: true,
                    controller: myTabController.controller,
                    indicator: BoxDecoration(
                      color: AppColor.yellow,
                      borderRadius: BorderRadius.circular(15 * Dim.w1),
                    ),
                    // indicatorColor: AppColor.black,
                    indicatorSize: TabBarIndicatorSize.label,
                    // indicatorWeight: 3 * Dim.w1,
                    labelColor: AppColor.black,
                    labelStyle: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: Dim.h1 * 20),
                    unselectedLabelColor: AppColor.grey,
                    unselectedLabelStyle: TextStyle(fontFamily: "Poppins", fontWeight: FontWeight.w400, fontSize: Dim.h1 * 20),
                    tabs: [
                      TabElements("Chairs"),
                      TabElements("Lambs"),
                      TabElements("Table"),
                      TabElements("Floor"),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10 * Dim.h1,
            ),
            Expanded(
                child: TabBarView(
              controller: myTabController.controller,
              children: [
                SingleTabBarView(),
                SingleTabBarView(),
                SingleTabBarView(),
                SingleTabBarView(),
              ],
            ))
          ])),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart, color: AppColor.black),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.check_box, color: AppColor.black),
      //       label: "Search",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.star, color: AppColor.black),
      //       label: "Cart",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_sharp, color: AppColor.black),
      //       label: "Profile",
      //     ),
      //   ],
      //   onTap: (value) {},
      // ),
    );
  }
}

class SingleTabBarView extends StatelessWidget {
  const SingleTabBarView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Dim.h1 * 20,
          ),
          Wrap(runSpacing: 48 * Dim.h1, spacing: 30 * Dim.w1, children: List.generate(20, (index) => SingleItemView(index))),
        ],
      ),
      // Container(color: Colors.red, height: Dim.h1 * 190, width: Dim.w1 * 169, child: Text("h")),
    );
  }
}

class SingleItemView extends StatelessWidget {
  final int index;
  const SingleItemView(
    this.index, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){Get.to(Page3());},
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: AppColor.grey),
          height: Dim.h1 * 190,
          width: Dim.w1 * 169,
          child: Stack(children: [
            Center(
                child: RotationTransition(
              turns: AlwaysStoppedAnimation(-40 / 360),
              child: Container(
                  alignment: Alignment.center,
                  height: Dim.h1 * 190,
                  width: Dim.w1 * 60,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(50, 198, 131, 37),
                    borderRadius: BorderRadius.circular(24),
                  )),
            )),
            Row(
              // For (item Details) and (like + button)
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Container(
                            // color: Colors.amber,
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "images/${[
                                '61Z2OArk4kL 1big',
                                '61Zbl6keClS',
                                'kisspng-eames-lounge-chair-living-room-chaise-longue-furni-5b317052df3b42',
                                'czNmcy1wcml2YXRlL3Jhd3BpeGVsX2ltYWdlcy93ZWJzaXRlX2NvbnRlbnQvcC00NjctcG9tLTAzMjUucG5n-removebg-preview 1',
                              ][index % 4]}.png",
                              height: Dim.h1 * 130,
                              width: Dim.w1 * 140,
                            ))),
                    Padding(
                      padding: EdgeInsets.only(left: 17 * Dim.w1, bottom: 6 * Dim.h1),
                      child: Wrap(
                        direction: Axis.vertical,
                        children: [
                          Text(
                            ['Modern Chair', 'Mini Chair', 'Modern Chair', 'Mini Chair'][index % 4],
                            style: TextStyle(
                                fontFamily: "Poppins", fontWeight: FontWeight.w500, fontSize: 16 * Dim.h1, height: 1.5 * Dim.h1),
                          ),
                          Text(
                            ["\$1,650.00", "\$1,250.00", "\$1,450.00", "\$1,350.00"][index % 4],
                            style: TextStyle(
                                height: 1.1 * Dim.h1, fontFamily: "Poppins", fontWeight: FontWeight.w600, fontSize: 14 * Dim.h1),
                          )
                        ],
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 3 * Dim.h1, bottom: 12 * Dim.w1),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.favorite, color: Color.fromARGB(255, 187, 56, 47), size: 22),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: Container(
                          height: Dim.h1 * 23,
                          width: Dim.w1 * 23,
                          color: AppColor.yellow,
                          child: Icon(Icons.add_circle_outline, color: Colors.black, size: 16),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   mainAxisSize: MainAxisSize.max,
            //   children: [
            //     // IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Colors.red, size: 30 * Dim.w1)),
            //     // IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Colors.red, size: 30 * Dim.w1))
            //   ],
            // )
          ])),
      );
  }
}

class TabElements extends StatelessWidget {
  final name;

  TabElements(
    this.name, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Tab(
      child: Container(
        margin: EdgeInsets.zero,
        // color: Colors.red,
        alignment: Alignment.center,
        width: 91 * Dim.w1,
        height: 36 * Dim.h1,
        child: Text("$name"),
      ),
    );
  }
}

// TabBar(controller: myTabController.controller, tabs: myTabController.myTabs),
// TabBarView(controller: myTabController.controller, children: [for (var i = 0; i < myTabController.myTabs.length; i++) Center(child: Text("data")),])
//
//

class CustomSeachDelegate extends SearchDelegate {
  List<String> searchTerms = [
    "Modern Chair",
    "Modern Table",
    "Modern Lambs",
    "Modern Floor",
    "Mini Chair",
    "Mini Table",
    "Mini Lambs",
    "Mini Floor",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            query = "";
          },
          icon: const Icon(
            Icons.clear,
            color: AppColor.black,
          )),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: const Icon(Icons.arrow_back),
      color: AppColor.black,
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchQuery[index]),
          );
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var fruit in searchTerms) {
      if (fruit.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(fruit);
      }
    }
    return ListView.builder(
        itemCount: matchQuery.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(matchQuery[index]),
          );
        });
  }
}
