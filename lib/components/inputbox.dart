import 'package:xtramiler/modules/imports.dart';

class Inputbox extends StatelessWidget {
  Inputbox({this.labelText, this.type, this.isDelivery});
  final String labelText;
  final TextInputType type;
  final bool isDelivery;
  @override
  Widget build(BuildContext context) {
    return new TextFormField(
      enabled: isDelivery,
      decoration: new InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.yellow.shade200,
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
