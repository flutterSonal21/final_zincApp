import 'package:fintech/firebase_interaction.dart';
import 'package:fintech/home_list.dart';
import 'package:fintech/widgets/sidebar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _selectedIndex = 0;
  String navbarText = 'Welcome Back Joseph!';
  bool showSearchBar = true;
  bool showNotificationIcon = true;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      showSearchBar = index == 0;
      showNotificationIcon = index == 0;
      if (_selectedIndex == 0) {
        navbarText = 'Welcome Back Joseph!';
      } else if (_selectedIndex == 1) {
        navbarText = 'Search';
      } else if (_selectedIndex == 2) {
        navbarText = 'Community';
      }
    });
  }

  Widget _buildBody() {
    switch (_selectedIndex) {
      case 0:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '#Trending News',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
              ),
            ),
            HomeList(),
          ],
        );
      case 1:
        return Center(
          child: Text('Hello'),
        );
      case 2:
        return Center(
          child: Text('Community'),
        );
      default:
        return Container();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 8,
        title: Row(
          children: [
            Expanded(
              child: Text(
                navbarText,
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 115, 230),
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            if (showNotificationIcon)
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.notifications),
              ),
          ],
        ),
        bottom: showSearchBar
            ? PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.black),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
        )
            : null,
      ),
      drawer: _selectedIndex == 0 ? Drawer(child: SideBar()) : null,
      body: _buildBody(),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BottomNavigationBar(
            backgroundColor: Color.fromARGB(255, 23, 112, 202),
            elevation: 0,
            mouseCursor: SystemMouseCursors.grab,
            items:  <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                activeIcon: Image.asset('assets/images/globe.png',height: 24,color: Colors.black,),
                icon: Image.asset('assets/images/globe.png',height: 24,color: Colors.white,),
                label: 'community',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
            unselectedItemColor: Colors.white,
          ),
        ),
      ),
    );
  }
}

