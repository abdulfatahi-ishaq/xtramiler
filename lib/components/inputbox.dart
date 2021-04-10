import 'package:xtramiler/modules/imports.dart';

class Inputbox extends StatelessWidget {
  Inputbox({this.labelText, this.type});
  final String labelText;
  final TextInputType type;
  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      decoration: new InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(5.0),
          borderSide: new BorderSide(),
        ),
        //fillColor: Colors.green
      ),
      validator: (val) {
        if (val.length == 0) {
          return "Email cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: type,
      style: new TextStyle(
          // fontFamily: "Poppins",
          ),
    );
  }
}
