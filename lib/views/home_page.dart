import 'package:carrinho_de_compras/shared/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(83, 177, 117, 1),
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
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
                children: List.generate(6, (index) => ProductCardWidget()),
                staggeredTiles: List.generate(6, (index) => ProductCardWidget())
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
