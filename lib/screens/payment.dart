import 'package:flutter/material.dart';
import '../components/doctor_card_builder.dart';
import '../constraint.dart';

class Payment extends StatefulWidget {
  static String id = 'Payment';
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: FlatButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Payment",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                DoctorCardBuilder(
                  doctorName: 'Dr. Samira Rhaman',
                  designation: 'Assistant Proffessior',
                  title: 'Cardiology',
                  postingHospital: 'Dhaka Medical Hospital',
                  workingDays: ['Sun', 'Mon', 'Sat', 'Wed', 'Tue'],
                  fee: '500 BDT',
                  visitingHours: '09.00 AM - 12.00 AM',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Receipt',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 26,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: <Widget>[
                      ReceiptRowBuilder(
                        description: 'Doctor Payment',
                        money: '+500',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ReceiptRowBuilder(
                        description: 'eDoctor Charge',
                        money: '+50',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ReceiptRowBuilder(
                        description: 'Pemo Code',
                        money: '-50',
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ReceiptRowBuilder(
                        description: 'Total',
                        money: '500',
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReceiptRowBuilder extends StatelessWidget {
  ReceiptRowBuilder({this.description, this.money});
  final String description;
  final String money;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            money,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
