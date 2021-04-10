import 'dart:async';

import 'package:xtramiler/modules/imports.dart';

class Flash extends StatefulWidget {
  static final String id = "flash_page";
  @override
  _FlashState createState() => _FlashState();
}

class _FlashState extends State<Flash> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3),
        () => Navigator.pushNamed((context), Dashboard.id));
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: Container(
            height: 200,
            child: Image.asset('images/logo.jpg'),
          ),
        ),
      ),
    );
  }
}
