import 'package:xtramiler/modules/imports.dart';

class Home extends StatefulWidget {
  static final String id = "home_page";
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [Order(), Profile(), Help()];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: onTabTapped,
        selectedItemColor: Colors.redAccent[700],
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.bike_scooter), label: 'Request'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.info), label: 'Info')
        ],
      ),
    );
  }
}
