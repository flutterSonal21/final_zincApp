import 'package:fintech/models/communit_channels.dart';
import 'package:fintech/widgets/carousel_item.dart';
import 'package:flutter/material.dart';

import 'community_message.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('#Trending Stocks', textAlign: TextAlign.start),
        CarouselPage(),
        const SizedBox(height: 10),
        const Text('#Community Channels'),
        const SizedBox(height: 10),
        SizedBox(
          width: width,
          child: Column(
            children: [
              CommunitChannels(
                imagePath: 'assets/images/hin.jpeg',
                text: 'Hindustan Unilever Ltd',
                onJoinButtonPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>const CommunityMessage()));
                },
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/crudeoil.png',
                text: 'Crude Oil Ltd',
                onJoinButtonPressed: () {},
                color: Colors.brown.shade600,
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/reliance.png',
                text: 'Reliance Industries',
                onJoinButtonPressed: () {},
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/hdfc.jpeg',
                text: 'HDFC bank',
                onJoinButtonPressed: () {},
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/marico.png',
                text: 'Marico',
                onJoinButtonPressed: () {},
                color: Colors.black,
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/kotak.png',
                text: 'Kotak Mahindra Bank',
                onJoinButtonPressed: () {},
              ),
              const SizedBox(height: 5),
              CommunitChannels(
                imagePath: 'assets/images/kotak.png',
                text: 'Kotak Mahindra Bank',
                onJoinButtonPressed: () {},
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
