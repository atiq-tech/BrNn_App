import 'dart:ui';

import 'package:badges/badges.dart';
import 'package:bornon_app/carousel/carousel_items.dart';
import 'package:bornon_app/common_section/common_add_cartbtn.dart';
import 'package:bornon_app/itemlist/hotdealmodel_product.dart';
import 'package:bornon_app/itemlist/newarrivelmodel_product.dart';
import 'package:bornon_app/itemlist/seeAll/see_all_section.dart';
import 'package:bornon_app/itemlist/itemListPart.dart';
import 'package:bornon_app/models/model_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Mydata = ModelItems.generatedMySourecList();
  static int quantity = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(236, 46, 48, 53),
        leading: Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: Text("Bornon"),
        actions: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Icon(
            Icons.person_outline_rounded,
            color: Colors.white,
          ),
          SizedBox(
            width: 10.0,
          ),
          Center(
            child: Badge(
              badgeColor: Color.fromARGB(255, 214, 30, 6),
              animationDuration: Duration(milliseconds: 300),
              badgeContent: Text(
                "$quantity",
                style: TextStyle(color: Colors.white, fontSize: 12.0),
              ),
              child: Icon(
                Icons.shopping_cart_checkout_outlined,
                size: 30.0,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
          SizedBox(
            width: 15.0,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselItems(),
            SizedBox(height: 15.0),
            ItemListPart(Mydata: Mydata),
            SizedBox(height: 15.0),
            SeeAllSection(
              seetitleText: "Hot Deal",
              seeAllText: "See All",
            ),
            SizedBox(height: 10.0),
            InkWell(
                onTap: () {
                  setState(() {
                    quantity++;
                  });
                },
                child: HotDealModelproduct(Mydata: Mydata)),
            SizedBox(height: 15.0),
            SeeAllSection(
              seetitleText: "New Arrivel",
              seeAllText: "See All",
            ),
            SizedBox(height: 10.0),
            NewArrivelModelProduct(Mydata: Mydata),
            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                "All Product",
                style: TextStyle(
                    fontSize: 18.0,
                    backgroundColor: Color.fromARGB(255, 152, 182, 97),
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: Mydata.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 15.0,
                      childAspectRatio: 5 / 7),
                  itemBuilder: (context, index) {
                    return Container(
                      width: 110.0,
                      padding: EdgeInsets.only(left: 10.0, right: 10.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        borderRadius: BorderRadius.circular(3.0),
                        boxShadow: [
                          BoxShadow(
                              spreadRadius: 3.0,
                              blurRadius: 10.0,
                              color: Color.fromARGB(255, 231, 227, 227),
                              offset: Offset(3.0, 3.0)),
                        ],
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(3.0),
                                      topRight: Radius.circular(3.0)),
                                  image: DecorationImage(
                                      image: AssetImage("${Mydata[index].img}"),
                                      fit: BoxFit.fill)),
                            ),
                          ),
                          Expanded(
                            flex: 3,
                            child: Container(
                              // color: Color.fromARGB(255, 145, 11, 122),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10.0),
                                  Text(
                                    "${Mydata[index].title}",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 31, 30, 30),
                                        fontSize: 12.0),
                                  ),
                                  SizedBox(height: 10.0),
                                  Text(
                                    "${Mydata[index].price}",
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 8, 117, 241),
                                        fontSize: 14.0),
                                  ),
                                  SizedBox(height: 10.0),
                                  CommonAddCartBtn(),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
