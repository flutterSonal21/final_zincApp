import 'package:flutter/material.dart';

import '../models/my_stock_item_model.dart';



class StockItemWidget extends StatelessWidget {
  final StockItem stockItem;

  const StockItemWidget({super.key, required this.stockItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  stockItem.imageUrl,
                  width: 40,
                  height: 40,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10.0),
              Text(
                stockItem.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),

          const SizedBox(height: 5.0),
          Column(
            children: [
              Text(
                '₹${stockItem.price.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              Text(
                '₹${stockItem.increment.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 12.0,
                  color: stockItem.increment >= 0 ? Colors.green : Colors.red,
                ),
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class StockListPage extends StatelessWidget {
  const StockListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StockItem> stockItems = [
      StockItem(
        imageUrl: 'assets/images/kotak.png',
        name: 'Kotak Mahindra',
        price: 1500.0,
        increment: -50.0,
      ),
      StockItem(
        imageUrl: 'assets/images/reliance.png',
        name: 'Reliance Industries',
        price: 3200.0,
        increment: 100.0,
      ),
      StockItem(
        imageUrl: 'assets/images/reliance.png',
        name: 'Reliance Industries',
        price: 720.0,
        increment: -20.0,
      ),
      StockItem(
        imageUrl: 'assets/images/hin.jpeg',
        name: 'Hindustan Unilever',
        price: 720.0,
        increment: 20.0,
      ),
      // Add more stock items here
    ];
    return  ListView.builder(
        itemCount: stockItems.length,
        itemBuilder: (context, index) {
          return StockItemWidget(stockItem: stockItems[index]);
        });

  }
}
