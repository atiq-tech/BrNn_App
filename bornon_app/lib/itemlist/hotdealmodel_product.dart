import 'package:bornon_app/common_section/common_add_cartbtn.dart';
import 'package:bornon_app/models/model_items.dart';
import 'package:flutter/material.dart';

class HotDealModelproduct extends StatelessWidget {
  const HotDealModelproduct({
    Key? key,
    required this.Mydata,
  }) : super(key: key);

  final List<ModelItems> Mydata;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 200.0,
        width: double.infinity,
        //color: Colors.green,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 110.0,
                color: Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        decoration: BoxDecoration(
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
                            SizedBox(height: 20.0),
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
                            SizedBox(height: 20.0),
                            CommonAddCartBtn(),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (_, index) => SizedBox(width: 15.0),
            itemCount: Mydata.length),
      ),
    );
  }
}
