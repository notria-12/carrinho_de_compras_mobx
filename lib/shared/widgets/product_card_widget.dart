import 'package:carrinho_de_compras/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  final Product product;
  const ProductCardWidget(this.product, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 2.0,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 230,
        width: 150,
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: 120,
              child: Center(child: Image.asset(product.imagePath)),
            ),
            Text(
              product.description,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            Text(
              product.qtdDescription,
              style: TextStyle(
                  fontSize: 14,
                  // fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(124, 124, 124, 1)),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "R\$ ${product.value}",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color.fromRGBO(83, 177, 117, 1)),
                  child: Center(
                      child: Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
