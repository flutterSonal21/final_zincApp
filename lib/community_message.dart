import 'package:flutter/material.dart';

class CommunityMessage extends StatefulWidget {
  const CommunityMessage({super.key});

  @override
  State<CommunityMessage> createState() => StateCommunityMessage();
}

class StateCommunityMessage extends State<CommunityMessage> {
  final List<Map<String, dynamic>> comments = [
    {
      'name': 'Amit Tiwari',
      'time': '18m',
      'comment': 'end of the day bumper buying..1550 plus closing',
      'color': const Color.fromRGBO(167, 93, 69, 0.65),
    },
    {
      'name': 'Kapil Singh',
      'time': '18m',
      'comment':
          'Expect closing at or below 1464..what a great selling opportunity this is ',
      'color': const Color.fromRGBO(163, 167, 117, 0.65),
    },
    {
      'name': 'Himanshu',
      'time': '18m',
      'comment': 'good stock',
      'color': const Color.fromRGBO(117, 143, 167, 0.65),
    },
    {
      'name': 'Manoj Dev',
      'time': '18m',
      'comment': 'hdfc 1460 future sell..what is expectation for next move.. ',
      'color': const Color.fromRGBO(182, 132, 233, 0.65),
    },

    {
      'name': 'Manoj Dev',
      'time': '18m',
      'comment': 'hdfc 1460 future sell..what is expectation for next move.. ',
      'color': const Color.fromRGBO(182, 132, 233, 0.65),
    },
    {
      'name': 'Manoj Dev',
      'time': '18m',
      'comment': 'hdfc 1460 future sell..what is expectation for next move.. ',
      'color': const Color.fromRGBO(182, 132, 233, 0.65),
    },
    {
      'name': 'Manoj Dev',
      'time': '18m',
      'comment': 'hdfc 1460 future sell..what is expectation for next move.. ',
      'color': const Color.fromRGBO(182, 132, 233, 0.65),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              const SizedBox(height: 20),
              Row(
                children: [
                  IconButton(onPressed: (){
                    Navigator.of(context).pop();
                  }, icon: const Icon(Icons.arrow_back)),
                  const Text(
                    "Hindustan Unilever Ltd",
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  ),
                  const Spacer(),
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/hindustan.jpeg',
                        height: 40,
                        width: 40,
                        fit: BoxFit.cover,
                      )),
                ],
              ),
              const Divider(
                color: Colors.black,
                thickness: 1.0,
              ),
              const Row(
                children: [
                  Text(
                    "2382.50",
                    style: TextStyle(fontSize: 39, color: Colors.black),
                  ),
                  SizedBox(width: 20),
                  Text(
                    "-17.67 (-1.88%)",
                    style: TextStyle(color: Colors.red, fontSize: 17),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
                width: double.infinity,
                child: Image.asset('assets/images/chart.png',fit: BoxFit.contain,),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    final comment = comments[index];
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: Row(
                        children: [
                          ClipOval(
                            child: Material(
                              color: comment['color'],
                              child: InkWell(
                                splashColor: Colors.black,
                                child: const SizedBox(
                                  width: 40,
                                  height: 40,
                                  child: Center(
                                    child: Icon(Icons.person),
                                  ),
                                ),
                                onTap: () {
                                  // Handle button press
                                },
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      comment['name'],
                                      style: const TextStyle(
                                          fontSize: 16.61, color: Colors.black),
                                    ),
                                    const SizedBox(width: 5),
                                    Text(
                                      comment['time'],
                                      style: const TextStyle(
                                          fontSize: 8, color: Colors.black),
                                    ),
                                  ],
                                ),
                                Text(
                                  comment['comment'],
                                  style: const TextStyle(
                                      fontSize: 12, color: Colors.black),
                                ),
                                const Row(
                                  children: [
                                    Icon(Icons.thumb_up_alt,
                                        size: 16, color: Colors.black),
                                    SizedBox(width: 5),
                                    Text("Like",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.black)),
                                    SizedBox(width: 40),
                                    Icon(Icons.reply,
                                        size: 16, color: Colors.black),
                                    SizedBox(width: 5),
                                    Text("Reply",
                                        style: TextStyle(
                                            fontSize: 9, color: Colors.black)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Write something',
                        hintStyle: const TextStyle(color: Colors.grey),
                        fillColor: Colors.black,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 20),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.emoji_emotions_outlined,
                                  color: Colors.white),
                              onPressed: () {
                                // Handle emoji icon press
                              },
                            ),
                            IconButton(
                              icon:
                                  const Icon(Icons.image, color: Colors.white),
                              onPressed: () {
                                // Handle gallery icon press
                              },
                            ),
                          ],
                        ),
                      ),
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                  const SizedBox(width: 10),
                  ClipOval(
                    child: Material(
                      color: const Color.fromRGBO(167, 93, 69, 0.65),
                      child: InkWell(
                        splashColor: Colors.white,
                        child: const SizedBox(
                          width: 40,
                          height: 40,
                          child: Center(
                            child: Text('Me'),
                          ),
                        ),
                        onTap: () {
                          // Handle button press
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
