import 'package:xtramiler/modules/imports.dart';

class DeliveryBox extends StatefulWidget {
  @override
  _DeliveryBoxState createState() => _DeliveryBoxState();
}

class _DeliveryBoxState extends State<DeliveryBox> {
  // String dropdownValue = 'Berger Region';
  String _selectedLocation;
  static const _location = [
    'Apple',
    'Orange',
    'Lemon',
    'Strawberry',
    'Peach',
    'Cherry',
    'Watermelon',
  ];
  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.yellow.shade200,
        labelText: 'Pick Up Location',
        labelStyle: TextStyle(color: Colors.blue[300], fontSize: 16),
        hintText: 'Select Delivery Location',
        // Theme.of(context)
        //     .primaryTextTheme
        //     .caption
        //     .copyWith(color: Colors.blue[300]),
        border: const OutlineInputBorder(),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          isExpanded: true,
          isDense: true, // Reduces the dropdowns height by +/- 50%
          // icon: Icon(Icons.keyboard_arrow_down),
          value: _selectedLocation,
          items: _location.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(item),
            );
          }).toList(),
          onChanged: (selectedItem) => setState(
            () => _selectedLocation = selectedItem,
          ),
        ),
      ),
    );
  }
}
