import 'package:carrito_compras_app/constants.dart';
import 'package:carrito_compras_app/models/Product.dart';
import 'package:carrito_compras_app/screens/details/details_screen.dart';
import 'package:flutter/material.dart';
import 'categories.dart';
import 'items_cart.dart';

// Esto es para la seccion de Apple

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      // El crossAxis sirve para colocar a Women al inicio (izquierda)
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Apple Store",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing:
                    kDefaultPaddin, // Se utiliza para dar margenes a los productos arriba y abajo
                crossAxisSpacing:
                    kDefaultPaddin, // Se utiliza para dar margenes a los productos a los lados
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsScreen(
                        product: products[index],
                      ),
                    )),
              ),
            ),
          ),
        ),
        // Para agregar el div y la imagen
      ],
    );
  }
}
