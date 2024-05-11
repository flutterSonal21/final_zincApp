import 'package:flutter/material.dart';

class TrendingNewsModel {
  final Image image;
  final String heading;
  final String content;

  TrendingNewsModel(
      {required this.image, required this.heading, required this.content});
}

class NewsData {
  static List<TrendingNewsModel> getTrendingNews() {
    return [
      TrendingNewsModel(
        image: Image.asset('assets/images/news.jpeg',fit: BoxFit.cover,),
        // Replace with your image asset
        heading: 'Markets can turn volatile in the near term',
        content:
            'New Delhi, May 4 (IANS) Markets are likely to turn volatile in the near term given'
            ' the rising volatility index, analysts said.V K Vijayakumar, Chief Investment Strategist, GNew Delhi,',
      ),
      TrendingNewsModel(
        image: Image.asset('assets/images/news2.jpeg',fit: BoxFit.cover,),
        // Replace with your image asset
        heading: 'Goldman Sachs says stocks are not pricing in these two risks',
        content:
            'New Delhi, May 4 (IANS) Markets are likely to turn volatile in the near term given the '
            'rising volatility index, analysts said.V K Vijayakumar, Chief Investment Strategist, GNew Delhi, ',
      ),
      TrendingNewsModel(
        image: Image.asset('assets/images/news3.jpeg',fit: BoxFit.cover,),
        // Replace with your image asset
        heading:
            'Goldman Sachs initiates JD.com Inc Adr at \'buy\' with price target of \$37.00',
        content:
            'New Delhi, May 4 (IANS) Markets are likely to turn volatile in the near term given the'
            ' rising volatility index, analysts said.V K Vijayakumar, Chief Investment Strategist, GNew Delhi,',
      ),
      TrendingNewsModel(
        image: Image.asset('assets/images/news4.jpeg',fit: BoxFit.cover,),
        // Replace with your image asset
        heading:
            'Frontier stock up 2% as revenue grows for first time since 2015',
        content:
            'New Delhi, May 4 (IANS) Markets are likely to turn volatile in the near term given the '
            'rising volatility index, analysts said.V K Vijayakumar, Chief Investment Strategist, GNew Delhi,',
      ),TrendingNewsModel(
        image: Image.asset('assets/images/news4.jpeg',fit: BoxFit.cover,),
        // Replace with your image asset
        heading:
            'Frontier stock up 2% as revenue grows for first time since 2015',
        content:
            'New Delhi, May 4 (IANS) Markets are likely to turn volatile in the near term given the '
            'rising volatility index, analysts said.V K Vijayakumar, Chief Investment Strategist, GNew Delhi,',
      ),
      // Add more dummy data as needed
    ];
  }
}
