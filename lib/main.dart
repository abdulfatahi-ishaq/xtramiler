import 'package:xtramiler/modules/imports.dart';

void main() => runApp(Xtramiler());

class Xtramiler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Flash.id,
      routes: {
        Flash.id: (context) => Flash(),
        Home.id: (context) => Home(),
        Help.id: (context) => Help(),
        AboutUs.id: (context) => AboutUs(),
        Index.id: (context) => Index(),
        Register.id: (context) => Register(),
      },
    );
  }
}
