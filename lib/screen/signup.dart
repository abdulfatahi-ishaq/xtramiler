import 'package:xtramiler/modules/imports.dart';

class Signup extends StatefulWidget {
  static final String id = "Signup_page";
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                  Colors.redAccent[700].withOpacity(0.5), BlendMode.dstIn),
              image: AssetImage('images/logo1.jpg'),
              fit: BoxFit.fill),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                new Inputbox(labelText: "Full Name", type: TextInputType.name),
                SizedBox(
                  height: 10.0,
                ),
                new Inputbox(
                    labelText: "Email", type: TextInputType.emailAddress),
                SizedBox(
                  height: 10.0,
                ),
                new Inputbox(
                    labelText: "Phone Number", type: TextInputType.phone),
                SizedBox(
                  height: 10.0,
                ),
                new Inputbox(
                    labelText: "Password", type: TextInputType.visiblePassword),
                SizedBox(
                  height: 10.0,
                ),
                new Inputbox(
                    labelText: "Address", type: TextInputType.visiblePassword),
                SizedBox(
                  height: 10.0,
                ),
                HomeButton(
                  label: "Register",
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
