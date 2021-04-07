import 'package:xtramiler/modules/imports.dart';

class HomeButton extends StatelessWidget {
  HomeButton({this.label, this.onPressed});
  final TextStyle style = TextStyle(fontFamily: 'Ubuntu', fontSize: 20.0);
  final Text label;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.redAccent[700],
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Text("label",
            textAlign: TextAlign.center,
            style: style.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
