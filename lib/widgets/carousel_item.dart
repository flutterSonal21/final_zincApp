import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../models/carousel_item_model.dart';

class CarouselPage extends StatelessWidget {
  final List<StockItem> stockItems = [
    StockItem('Arvee Laboratories Ltd(ARVE)', 'Currency in INR', 208.85, 3.55, 1.88),
    StockItem('Infosys Ltd(INFY)', 'Currency in INR', 1433.80, 6.75, 0.45),
    StockItem('Adani Power Ltd(ADAN)', 'Currency in INR', 579.00, 2.51, 0.28),
    // Add more stock items here
  ];

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 115.0,
            autoPlay: true,
            aspectRatio: 16/9,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 1,
          ),
          items: stockItems.map((item) => StockCarouselItem(item: item)).toList(),
        ),
    );
  }
}

