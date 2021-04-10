import 'package:xtramiler/modules/imports.dart';

void main() => runApp(Xtramiler());

class Xtramiler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Flash.id,
      routes: {
        Flash.id: (context) => Flash(),
        Order.id: (context) => Order(),
        Help.id: (context) => Help(),
        AboutUs.id: (context) => AboutUs(),
        Signup.id: (context) => Signup(),
        Profile.id: (context) => Profile(),
        Home.id: (context) => Home()
      },
    );
  }
}
