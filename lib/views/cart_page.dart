import 'package:carrinho_de_compras/shared/widgets/item_cart_widget.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 177, 117, 1),
        title: Text('Meu Carrinho'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          children: [
            ItemCartWidget(),
            Divider(
              height: 3,
            )
          ],
        ),
      ),
    );
  }
}
