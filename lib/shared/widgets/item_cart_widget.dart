import 'package:flutter/material.dart';

class ItemCartWidget extends StatefulWidget {
  const ItemCartWidget({Key? key}) : super(key: key);

  @override
  _ItemCartWidgetState createState() => _ItemCartWidgetState();
}

class _ItemCartWidgetState extends State<ItemCartWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      // color: Colors.blueAccent,
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 65,
            child: Image.asset('assets/images/eggs.png'),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 130,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Egg Chicken Red',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                ),
                Text(
                  '4pcs, Price',
                  style: TextStyle(
                      fontSize: 14,
                      // fontWeight: FontWeight.w700,
                      color: Color.fromRGBO(124, 124, 124, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(17),
                          color: Colors.white,
                          border: Border.all(
                              color: Color.fromRGBO(179, 179, 179, 1))),
                      child: Center(
                          child: Icon(
                        Icons.remove,
                        color: Colors.redAccent,
                      )),
                    ),
                    Text(
                      '1',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Colors.white,
                            border: Border.all(
                                color: Color.fromRGBO(179, 179, 179, 1))),
                        child: Center(
                          child: Icon(Icons.add,
                              color: Color.fromRGBO(83, 177, 117, 1)),
                        )),
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Icon(Icons.close, color: Color.fromRGBO(179, 179, 179, 1)),
              SizedBox(height: 30),
              Text(
                "R\$1.99",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ],
          )
        ],
      ),
    );
  }
}
