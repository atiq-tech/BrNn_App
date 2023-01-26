import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ModelItems {
  String img;
  String title;
  String itemheadline;
  String price;
  bool isClick;
  bool isSelect;
  String icontitle;
  IconData icon;
  String description;
  ModelItems(this.img, this.title, this.itemheadline, this.price, this.isClick,
      this.isSelect, this.icontitle, this.icon, this.description);
  static List<ModelItems> generatedMySourecList() {
    return [
      ModelItems(
        "images/bby.jpg",
        "Baby Lotion",
        "Hot Deal",
        "\$50",
        true,
        false,
        'Bounce',
        Icons.dangerous,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/motor.jpg",
        "Brands Motor",
        "Hot Product",
        "\$250",
        true,
        false,
        'Bounce',
        Icons.dangerous,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ladissharee.jpg",
        "Sophia Campos.",
        "Top Seller",
        "\$95",
        false,
        false,
        'Lower',
        Icons.cabin_outlined,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ts1.webp",
        "Mens T-shirt.",
        "New Arrival",
        "\$34",
        true,
        false,
        'Commerce',
        Icons.baby_changing_station,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ladis.jpg",
        "Ladis Bag.",
        "Features",
        "\$170",
        false,
        true,
        'Level',
        Icons.ac_unit,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ts2.webp",
        "Mens T-shirt.",
        "Features",
        "\$170",
        false,
        true,
        'Level',
        Icons.ac_unit,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ststs.jpg",
        "Brands Motor",
        "Hot Product",
        "\$250",
        true,
        false,
        'Bounce',
        Icons.dangerous,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/sharee1.jpg",
        "Sophia Campos.",
        "Top Seller",
        "\$95",
        false,
        false,
        'Lower',
        Icons.cabin_outlined,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
      ModelItems(
        "images/ts1.webp",
        "Mens T-shirt.",
        "New Arrival",
        "\$34",
        true,
        false,
        'Commerce',
        Icons.baby_changing_station,
        'South Africa is a country on the southernmost tip of the African continent, marked by several distinct ecosystems. Inland safari destination Kruger National Park is populated by big game. The Western Cape offers beaches, lush winelands around Stellenbosch and Paarl, craggy cliffs at the Cape of Good Hope, forest and lagoons along the Garden Route, and the city of Cape Town, beneath flat-topped Table Mountain.',
      ),
    ];
  }
}
