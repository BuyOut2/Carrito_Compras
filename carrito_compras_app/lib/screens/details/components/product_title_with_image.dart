import 'package:carrito_compras_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Producto:",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          // Se procede a realizar la parte de la imagen y precio
          SizedBox(
              height:
                  kDefaultPaddin), // En esta parte se agrega una altura para tener un margen con el div azul
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.white),
                  children: [
                    TextSpan(
                        text:
                            "Price\n"), // el \n nos sirve para dar un salto de linea entre el text "Price" y "el monto"
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context).textTheme.headline4.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(
                  width:
                      kDefaultPaddin), //  Se agrega un margen interno a la seccion del producto imagen y precio para subirlo un poco del div blanco
              Expanded(
                // Seccion donde se agrega la imagen del producto
                child: Hero(
                  tag:
                      "${product.id}", // Hero y tag se utiliza para al momento de seleccionar un producto el mismo se deslice a la siguiente ventana donde se mostrara los detalles del producto
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
