import 'package:fintech/signin_page.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int _currentPageIndex = 0;

  final PageController _pageController = PageController();

  final List<Widget> _pages = [
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: _pages.length,
            itemBuilder: (context, index) {
              return _pages[index];
            },
            onPageChanged: (index) {
              setState(() {
                _currentPageIndex = index;
              });
            },
          ),
          Positioned(
            top: 40.0,
            right: 20.0,
            child: GestureDetector(
              onTap: () {
                // Navigate to sign in page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
              child: Container(
                alignment: Alignment.center,
              padding: const EdgeInsets.only(left: 10,top: 5,right: 10,bottom: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 2.0),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  'Skip',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 80.0,
            child: Row(
              children: [
                for (int i = 0; i < _pages.length; i++)
                  if (i == _currentPageIndex)
                    _buildDot(true)
                  else
                    _buildDot(false),
              ],
            ),
          ),
          Positioned(
            bottom: 20.0,
            child: GestureDetector(
              onTap: () {
                if (_currentPageIndex < _pages.length - 1) {
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                } else {
                  // Navigate to sign in page
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  );
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: 313,
                height: 50,
                decoration: BoxDecoration(
                  color:_currentPageIndex == _pages.length - 1 ?  Colors.white:Colors.blue,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Text(
                  _currentPageIndex == _pages.length - 1 ? 'Get Started' : 'Next',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: _currentPageIndex == _pages.length - 1 ? Colors.blue:Colors.white,
                  ),
                ),
              ),
            ),
          ),
          if (_currentPageIndex > 0)
            Positioned(
              top: 40.0,
              left: 20.0,
              child: GestureDetector(
                onTap: () {
                  _pageController.previousPage(
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                child: Container(

                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(16.98),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                    size: 27.0,
                  ),
                ),
              ),
            ),

        ],
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return Container(
      margin: const EdgeInsets.only(right: 5.0),
      width:  8.0,
      height:  8.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: isActive ? Colors.blue : Colors.blue.withOpacity(0.5),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/3.jpeg',fit: BoxFit.cover,);
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/2.jpeg',fit: BoxFit.cover,);
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/images/1.jpeg',fit: BoxFit.cover,);
  }
}
