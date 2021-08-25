import 'package:carrito_compras_app/models/Product.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        // Aqui se agrega la seccion para elegir varios colores al producto
        Expanded(
          // El expanded es para colocar el margen entre la seccion de colores y la Size
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Color"),
              Row(
                children: <Widget>[
                  // Esa seccion es para colocar los select en fila
                  ColorDot(
                    color: Color(0xFF356C95),
                    isSelected: true,
                  ),
                  ColorDot(color: Color(0xFFF8C078)),
                  ColorDot(color: Color(0xFFA29B9B)),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          //  El expanded es para colocar el margen entre la seccion de colores y la Size
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: kTextColor),
              children: [
                TextSpan(
                  text:
                      "Size\n", // \n sirve para dar un salto entre Size y el valor
                ),
                TextSpan(
                  text:
                      "${product.size}", // el valor del Size esta definido en la seccion de Productos
                  style: Theme.of(context)
                      .textTheme
                      .headline5
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key key,
    this.color,
    // por defecto isSelected es false
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        // se le agrega el margen al select y al texto ("Color")
        top: kDefaultPaddin / 4,
        right: kDefaultPaddin / 2,
      ),
      padding:
          EdgeInsets.all(2.5), // sirve para reducir el tamaño de los select
      height: 24,
      width: 24,
      decoration: BoxDecoration(
        shape: BoxShape
            .circle, // Sirve para darle un estilo redondeado a los select (En este caso se agrega un redondeado a los circulos para elegir los colores)
        border: Border.all(
          color: isSelected
              ? color
              : Colors
                  .transparent, // aqui se le agrega el color a los bordes  y con el isSeleted estamos comparando (Si es false entonces se agrega el color transparente al select)
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color:
              color, // aqui se le agrega el color dentro del selected (relleno)
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
