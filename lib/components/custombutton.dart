import 'package:xtramiler/modules/imports.dart';

class HomeButton extends StatelessWidget {
  HomeButton({this.label, this.onPressed, this.btnColor});
  // final TextStyle style = TextStyle(fontFamily: 'Ubuntu', fontSize: 20.0)
  final String label;
  final Function onPressed;
  final Color btnColor;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(3.0),
      color: btnColor,
      child: MaterialButton(
        minWidth: MediaQuery.of(context).size.width,
        padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
        onPressed: onPressed,
        child: Text(label,
            textAlign: TextAlign.center,
            style: TextStyle(fontFamily: 'Ubuntu', fontSize: 20.0)
                .copyWith(color: Colors.white, fontWeight: FontWeight.bold)),
      ),
    );
  }
}
