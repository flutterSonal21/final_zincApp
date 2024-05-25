import 'package:fintech/models/trending_news_model.dart';
import 'package:flutter/material.dart';

class HomeList extends StatelessWidget {
  const HomeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox( // Wrap in a SizedBox with a fixed height
        height: MediaQuery.of(context).size.height-260, // Adjust height as needed
        child: ListView.builder(
          itemCount: NewsData.getTrendingNews().length,
          itemBuilder: (context, index) {
            TrendingNewsModel news = NewsData.getTrendingNews()[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(// Wrap each item in a SizedBox with a fixed height
                height: 100, // Adjust height as needed
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16), // Curves the corners
                  ),
                  width: 332,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 6,
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(right: 2),
                            child: Container(
                              height: 140,
                              width: 150,
                              child: news.image,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              news.heading,
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(height: 8),
                            Flexible(
                              child: Text(
                                news.content,
                                style: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
                                overflow: TextOverflow.fade,

                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
