import 'package:carrito_compras_app/models/Product.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPaddin),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag:
                    "${product.id}", // Hero y tag se utiliza para al momento de seleccionar un producto el mismo se deslice a la siguiente ventana donde se mostrara los detalles del producto
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              // el nombre (products) se saca de la variable creada en Products.dart y sirve para agregar el titulo del producto
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            "\$${product.price}", // Aqui se agrega el valor de los productos (Esta seccion se agrega en Product.dart)
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
