import 'package:xtramiler/modules/imports.dart';

class Order extends StatefulWidget {
  static final String id = "Order_page";
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Center(
            child: Text(
              'Welcome to Xtramiler Logistics',
              style: TextStyle(fontSize: 25, fontFamily: 'Ubuntu'),
            ),
          ),
          Divider(
            thickness: 0.3,
          ),
          Text(
            'Complete the form below to request for any our delivery service' +
                'such as: Door-to-Door Delivery, Errand Services, Office Delivery,' +
                'Food Delivery, Pickup & Drop and many more',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 15,
            ),
          ),
          Divider(
            thickness: 0.3,
          ),
          Text(
            "Receiver's Details",
            style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
          ),
          new Inputbox(labelText: "Name", type: TextInputType.name),
          SizedBox(
            height: 20,
          ),
          new Inputbox(labelText: "Address", type: TextInputType.streetAddress),
          SizedBox(
            height: 20,
          ),
          new Inputbox(labelText: "Number", type: TextInputType.number),
          SizedBox(height: 10),
          Text(
            "PickUp Details",
            style: TextStyle(fontFamily: 'Ubuntu', fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          new Inputbox(labelText: "PickUp Item", type: TextInputType.name),
          SizedBox(
            height: 20,
          ),
          // new Inputbox(
          //     labelText: "Pickup Location", type: TextInputType.streetAddress),
          SelectionBox(),
          SizedBox(
            height: 20,
          ),
          new Inputbox(
              labelText: "Delivery Location", type: TextInputType.name),
          SizedBox(
            height: 20,
          ),
          new Inputbox(labelText: "Delivery Fee", type: TextInputType.number),
          SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: Text(
              'Submit',
              style: TextStyle(
                  color: Colors.redAccent[700],
                  fontFamily: 'Ubuntu',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
