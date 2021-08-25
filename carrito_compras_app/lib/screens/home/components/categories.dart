import 'package:flutter/material.dart';

import '../../../constants.dart';

// Se necesita un satefull widget para las categorias
// Seccion Categorias

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "MAC",
    "iPad",
    "iPhone",
    "Watch",
    "TV",
  ];
  // Por defecto nuestro primer item sera seleccionado
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }

// Para colocarle la barra de seleccion se extrae el Wrap Column al Text y en el Container se colocan los estilos
  Widget buildCategory(int index) {
    return GestureDetector(
      // sirve para seleccionar cada categoria y agregarle el estilo segun este seleccionado
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          // crossaxis sirve para colocar la barra de seleccion al inicio de cada categoria
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              categories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                // selectedIndex sirve para comparar cual categoria esta seleccionada y colocarte el color transparente a las que no estan seleccionadas.
                color: selectedIndex == index ? kTextColor : kTextLightColor,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 5),
              height: 2,
              width: 30,
              // selectedIndex sirve para comparar cual categoria esta seleccionando para ocultar las barras de la que no esten seleccionadas.
              color: selectedIndex == index ? Colors.black : Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}
