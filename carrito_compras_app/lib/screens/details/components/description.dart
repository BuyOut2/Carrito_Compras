import 'package:carrito_compras_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical:
              kDefaultPaddin), // agrega un padding al parrafo para que tenga espacio con el ColorAndSize
      child: Text(
        product.description,
        style: TextStyle(height: 1.5), // agrega un interlineado al parrafo
      ),
    );
  }
}
