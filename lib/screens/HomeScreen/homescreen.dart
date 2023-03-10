
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intune/const/colors/colors.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../BottomNavigationBar/Home.dart';
import '../BottomNavigationBar/chat.dart';
import '../QuizScreens/patient_Photo_Screen.dart';


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
        notchMargin: -15,
        clipBehavior: Clip.antiAlias,
        child: SizedBox(
          height: 54.5,
          child: Container(
            decoration: const BoxDecoration(
              color: Colors.white,

            ),
            child: BottomNavigationBar(
              onTap: _selectPage,
              backgroundColor: Theme.of(context).primaryColor,
              unselectedItemColor:MyColor.lightGrey,
              selectedItemColor: MyColor.lightPink,
              currentIndex: _selectedPageIndex,
              items: const [
                BottomNavigationBarItem(
                    icon: FaIcon(FontAwesomeIcons.house),
                    label: ''
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      MdiIcons.chat
                    ),
                    label: ''
                ),
                BottomNavigationBarItem(
                    activeIcon: null,
                    icon: Icon(null),
                    label: ''
                ),
                BottomNavigationBarItem(
                  icon:FaIcon(FontAwesomeIcons.stethoscope),
                  label: '',
                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.person_outline),
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
          backgroundColor: MyColor.pink,
          hoverElevation: 10,
          splashColor: Colors.grey,
          tooltip: 'Search',
          elevation: 4,
          child: const Icon(Icons.add),
          onPressed: () => setState(() {
            _selectedPageIndex = 2;
          }),
        ),
      ),
    );
  }
}
