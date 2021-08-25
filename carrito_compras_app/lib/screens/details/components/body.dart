import 'package:carrito_compras_app/constants.dart';
import 'package:carrito_compras_app/models/Product.dart';
import 'package:flutter/material.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';
import 'product_title_with_image.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // Nos indica el total de altura y anchura
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(top: size.height * 0.3), // divide el body
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      // borde en div blanco
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      ColorAndSize(product: product),
                      SizedBox(
                          height: kDefaultPaddin /
                              2), // Se agrega un margen (padding) entre los distintos modulos de la app
                      Description(product: product),
                      SizedBox(
                          height: kDefaultPaddin /
                              2), // Se agrega un margen (padding) entre los distintos modulos de la app
                      CounterWithFavBtn(),
                      SizedBox(
                          height: kDefaultPaddin /
                              2), // Se agrega un margen (padding) entre los distintos modulos de la app
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }
}
