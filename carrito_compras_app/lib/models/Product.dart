import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "iMac 27",
      price: 2299,
      size: 27,
      description: iMacText,
      image: "assets/images/iMAC.png",
      color: Color(0xFFA1CCDE)),
  Product(
      id: 2,
      title: "Mack Book Air",
      price: 1249,
      size: 13,
      description: macBookText,
      image: "assets/images/mac_book_air.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "iPad Pro",
      price: 1099,
      size: 13,
      description: iPadText,
      image: "assets/images/ipad_pro.png",
      color: Color(0xFFBEBEBE)),
  Product(
      id: 4,
      title: "iPhone 12",
      price: 799,
      size: 6,
      description: iPhone12,
      image: "assets/images/iPhone_12.png",
      color: Color(0xFFE3BEE5)),
  Product(
    id: 5,
    title: "Apple Watch",
    price: 399,
    size: 44,
    description: appleWatch,
    image: "assets/images/apple_watch.png",
    color: Color(0xFF292929),
  ),
  Product(
    id: 6,
    title: "Apple TV 4K",
    price: 199,
    size: 12,
    description: appleTV,
    image: "assets/images/apple_tv_4k.png",
    color: Color(0xFF898989),
  ),
];

String iMacText =
    "La iMac de 27 pulgadas viene con poderosas herramientas y apps que te permiten poner tu creatividad a soñar. Sus procesadores y gráficos superrápidos, gran memoria y almacenamiento flash te ofrecen potencia de sobra para cualquier carga de trabajo.";

String macBookText =
    "Nuestra notebook más ligera y delgada vuelve completamente renovada por dentro. Gracias al chip M1 de Apple, el CPU es hasta 3.5 veces más rápido y el GPU hasta 5 veces más veloz.";

String iPadText =
    "El nuevo iPad Pro es el dispositivo más rápido de su categoría. Está diseñado para aprovechar la potencia y las tecnologías exclusivas del chip M1, como el procesador de señal de imagen avanzado y la arquitectura de memoria unificada.";

String iPhone12 =
    "El chip A14 Bionic, el más rápido en un smartphone. Una pantalla OLED de borde a borde. Un nuevo frente de Ceramic Shield, cuatro veces más resistente a las caídas. Además, ahora el modo Noche viene en todas las cámaras. El iPhone 12 lo tiene todo. Y está disponible en dos tamaños perfectos.";

String appleWatch =
    "Mide tu nivel de oxígeno en la sangre con una app y un sensor revolucionarios. Y no pierdas de vista los datos de tus entrenamientos en la mejorada pantalla Retina siempre activa. Con el Apple Watch Series 6, podrás llevar una vida más saludable, más activa y mejor conectada.";

String appleTV =
    "El nuevo Apple TV 4K combina lo mejor de la televisión con tus dispositivos y servicios de Apple favoritos. Disfrutarás una experiencia increíble que transformará tu sala.";
