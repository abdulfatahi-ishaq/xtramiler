import 'package:xtramiler/modules/imports.dart';

class DeliveryBox extends StatefulWidget {
  @override
  _DeliveryBoxState createState() => _DeliveryBoxState();
}

class _DeliveryBoxState extends State<DeliveryBox> {
  String dropdownValue = 'Berger Region';
  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
        value: dropdownValue,
        hint: Text('Select Location'),
        icon: const Icon(Icons.arrow_downward),
        iconSize: 24,
        elevation: 16,
        style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.deepPurpleAccent,
        ),
        onChanged: (String newValue) {
          setState(() {
            dropdownValue = newValue;
          });
        },
        items: <String>[
          'Berger Region',
          'Ogudu Region',
          'Ikoyi Region',
          'Ikeja Region'
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList());
  }
}
