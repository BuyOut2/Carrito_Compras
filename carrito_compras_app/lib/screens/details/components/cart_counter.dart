import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        buildOutlineButton(
          icon: Icons.remove,
          press: () {
            // con el setState hacemos que se disminuya el numero de items a elegir al presionar el boton
            // se agrega un if para que solo pueda disminuir hasta el numero 1 (si no se agrega entonces colocaria valores negativos Ejemplo: 0 -1 -2 -3)
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPaddin /
                  2), // Le agrega un margen entre los botones y el texto
          child: Text(
            // si nuestro item es menos que 10 mostrara 01 02 03  si solo queremos que salga 1 2 3 se agrega .padLeft(2)
            numOfItems.toString().padLeft(2,
                "0"), // el valor 2 es el width y el "0" es donde agregamos para que salga 01 02 03
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icons.add,
          press: () {
            // con el setState hacemos que se incremente el numero de items a elegir al presionar el boton
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlineButton({IconData icon, Function press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(13),
        ),
        onPressed: press, // Function press
        child: Icon(icon), // IconData icon
      ),
    );
  }
}
