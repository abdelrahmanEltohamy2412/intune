
import 'package:flutter/material.dart';
import '../QuizScreens/patient_Photo_Screen.dart';
import '../bottomnavigatin/Home.dart';
import '../bottomnavigatin/chat.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  late List<Map<String, Widget>> pages;
  int _selectedPageIndex = 0;

  @override
  void initState() {
    pages = [
      {
        'page': const Home(),
      },
      {
        'page': const ChatScreen(),
      },
      {
        'page': const PatientPhotoScreen(),
      },
      {
        'page': const PatientPhotoScreen(),
      },
      {
        'page': const PatientPhotoScreen(),
      },
    ];
    super.initState();
  }

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        // color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 0.01,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 70,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.5,
                ),
              ),
            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor:Colors.pink,
              selectedItemColor: Colors.purple,
              currentIndex: _selectedPageIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(Icons.home),
                    label: ''
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.rss_feed),
                    label: ''
                ),
                BottomNavigationBarItem(
                    activeIcon: null,
                    icon: Icon(null),
                    label: ''
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag,
                  ),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: ''
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButtonLocation:
      FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: const Icon(Icons.search),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}
