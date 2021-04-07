import 'package:xtramiler/modules/imports.dart';

class Login extends StatefulWidget {
  static final String id = "login_page";
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('images/logo1.jpg'), fit: BoxFit.fill),
        ),
        child: Center(
          child: Column(),
        ),
      ),
    );
  }
}
