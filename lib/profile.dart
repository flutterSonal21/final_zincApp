import 'package:fintech/widgets/my_stock_widget.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                 ClipRRect(
                   borderRadius: BorderRadius.circular(30),
                   child: SizedBox(
                     height: 50,
                     width: 50,
                     child: Image.asset('assets/images/1.jpeg',fit: BoxFit.cover,),
                   ),
                 ),
                const SizedBox(width: 10,),
                const Text('Joseph Daniel',style: TextStyle(fontSize: 20,color: Colors.blue),),
                const SizedBox(width: 100,),
                IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none_outlined,size: 30,))

              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 180,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 0, 115, 230),
                    Color.fromARGB(255, 80, 159, 238),
                    Color.fromARGB(255, 145, 195, 245),
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                ),
                borderRadius: BorderRadius.circular(30)
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 11.0,top: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                      const Text('Portfolio',style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.w500),),
                    Divider(
                      endIndent: 150,
                        thickness: 0.7,
                      color: Colors.grey.shade600,
                    ),
                    Row(
                      children: [
                        const Column(
                          children: [
                            Text('₹1476.98',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35),),
                            Text('+4.08(+2.0%)vs last week'),
                          ],
                        ),
                        const SizedBox(width: 40,),
                        Image.asset('assets/images/upward.png',height: 70,)
                      ],
                    ),

                    Divider(
                      endIndent: 100,
                      thickness: 0.7,
                      color: Colors.grey.shade600,
                    ),
                    const Text('Total Investment')
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black,style: BorderStyle.solid),
                      ),
                      child: const Text('Edit Profile'),
                    ),
                  ),
                  const Text('29 Connections',style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w600),)
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text('My Stocks',style: TextStyle(fontWeight: FontWeight.bold),),
            ),
            const SizedBox(
              height: 300,
              width: double.infinity,
              child: StockListPage(),
            )
          ],
        ),
      ),
    );
  }
}
