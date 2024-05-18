import 'package:fintech/models/communit_channels.dart';
import 'package:fintech/widgets/carousel_item.dart';
import 'package:flutter/material.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('#Trending Stocks', textAlign: TextAlign.start),
        CarouselPage(),
        SizedBox(height: 10),
        Text('#Community Channels'),
        SizedBox(height: 10),
        Container(
          width: width,
          child: Column(
            children: [
              CommunitChannels(
                imagePath: 'assets/images/hin.jpeg',
                text: 'Hindustan Unilever Ltd',
                onJoinButtonPressed: () {},
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/crudeoil.png',
                text: 'Crude Oil Ltd',
                onJoinButtonPressed: () {},
                color: Colors.brown.shade600,
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/reliance.png',
                text: 'Reliance Industries',
                onJoinButtonPressed: () {},
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/hdfc.jpeg',
                text: 'HDFC bank',
                onJoinButtonPressed: () {},
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/marico.png',
                text: 'Marico',
                onJoinButtonPressed: () {},
                color: Colors.black,
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/kotak.png',
                text: 'Kotak Mahindra Bank',
                onJoinButtonPressed: () {},
              ),
              SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/kotak.png',
                text: 'Kotak Mahindra Bank',
                onJoinButtonPressed: () {},
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
