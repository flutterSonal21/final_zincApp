import 'package:flutter/material.dart';

class StockItem {
  final String name;
  final String currency;
  final double price;
  final double increment;
  final double percentage;

  StockItem(this.name, this.currency, this.price, this.increment, this.percentage);
}

class StockCarouselItem extends StatelessWidget {
  final StockItem item;

  const StockCarouselItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0,
            spreadRadius: 0.5,
            offset: Offset(0.0, 3.0),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(top:12.0,left: 12,right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            Text(
              item.currency,
              style: TextStyle(
                color: Colors.grey[700],
                 fontSize: 13
              ),
            ),
            const SizedBox(height: 4.0),
            Row(
              children: [
                Text(
                  '₹${item.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 23.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                const SizedBox(width: 8.0),
                Text(
                  '+₹${item.increment.toStringAsFixed(2)}(+${item.percentage.toStringAsFixed(2)}%)',
                  style: const TextStyle(
                    fontSize: 12.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
