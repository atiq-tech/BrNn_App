import 'package:bornon_app/models/model_items.dart';
import 'package:flutter/material.dart';

class ItemListPart extends StatefulWidget {
  const ItemListPart({
    Key? key,
    required this.Mydata,
  }) : super(key: key);

  final List<ModelItems> Mydata;

  @override
  State<ItemListPart> createState() => _ItemListPartState();
}

class _ItemListPartState extends State<ItemListPart> {
  final Mydata = ModelItems.generatedMySourecList();
  int isClick = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 55.0,
        width: double.infinity,
        // color: Colors.amber,
        child: ListView.separated(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    isClick = index;
                  });
                },
                child: Column(
                  children: [
                    Container(
                      width: 120.0,
                      height: 35.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: isClick == index
                                  ? Color.fromARGB(255, 0, 0, 0)
                                  : Color.fromARGB(255, 114, 101, 231),
                              width: 1),
                          color: isClick == index
                              ? Colors.white
                              : Color.fromARGB(255, 209, 247, 222),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: Text(
                          "${widget.Mydata[index].itemheadline}",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: isClick == index
                                ? Color.fromARGB(255, 0, 0, 0)
                                : Color.fromARGB(255, 77, 76, 76),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Container(
                      height: 5.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          color: isClick == index
                              ? Color.fromARGB(255, 51, 50, 50)
                              : Colors.white,
                          borderRadius: BorderRadius.circular(20.0)),
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
