import 'package:xtramiler/modules/imports.dart';

class Index extends StatefulWidget {
  static final String id = "index_page";
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/logo1.jpg'), fit: BoxFit.cover),
        ),
        child: Center(
          child: Column(),
        ),
      ),
    );
  }
}
