import 'package:carrinho_de_compras/models/product_model.dart';
import 'package:carrinho_de_compras/shared/widgets/product_card_widget.dart';
import 'package:carrinho_de_compras/views/cart_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  List<Product> products = [
    Product(
        imagePath: "assets/images/eggs.png",
        description: "Egg Chicken Red",
        value: 1.99,
        qtdDescription: "4pcs, Price"),
    Product(
        imagePath: "assets/images/pepper.png",
        description: "Bell Pepper Red",
        value: 4.99,
        qtdDescription: "4pkg, Price"),
    Product(
        imagePath: "assets/images/sprinte.png",
        description: "Sprinte Can",
        value: 2.25,
        qtdDescription: "325ml, Price"),
    Product(
        imagePath: "assets/images/coca.png",
        description: "Coca Cola Can",
        value: 3.55,
        qtdDescription: "325ml, Price"),
    Product(
        imagePath: "assets/images/orange_juice.png",
        description: "Orange Juice",
        value: 12.54,
        qtdDescription: "2L, Price"),
    Product(
        imagePath: "assets/images/apple.png",
        description: "Red Apple",
        value: 4.55,
        qtdDescription: "1kg, Price"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 177, 117, 1),
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => CartPage()));
              },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: StaggeredGridView.count(
                crossAxisCount: 4,
                padding: const EdgeInsets.all(2.0),
                children: products
                    .map((product) => ProductCardWidget(product))
                    .toList(),
                staggeredTiles: products
                    .map((product) => ProductCardWidget(product))
                    .toList()
                    .map<StaggeredTile>((_) => StaggeredTile.fit(2))
                    .toList(),
                mainAxisSpacing: 6.0,
                crossAxisSpacing: 6.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
