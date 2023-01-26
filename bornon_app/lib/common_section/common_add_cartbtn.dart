import 'package:flutter/material.dart';

class CommonAddCartBtn extends StatefulWidget {
  const CommonAddCartBtn({
    Key? key,
  }) : super(key: key);

  @override
  State<CommonAddCartBtn> createState() => _CommonAddCartBtnState();
}

class _CommonAddCartBtnState extends State<CommonAddCartBtn> {
  // final newquantity = quantity;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {});
      },
      child: Container(
        height: MediaQuery.of(context).size.height / 30,
        width: MediaQuery.of(context).size.width,
        color: Color.fromARGB(255, 13, 124, 16),
        child: const Center(
          child: Text(
            "Add to cart",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 233, 229, 229),
                fontSize: 16.0),
          ),
        ),
      ),
    );
  }
}
