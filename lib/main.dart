// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(LoanCalculatorApp());
}

class LoanCalculatorApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoanCalculatorScreen(),
    );
  }
}

class LoanCalculatorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
          child: Center(
            child: Text(
              'Loan calculator',
              style: TextStyle(
                fontFamily: 'Noto Serif',
                fontWeight: FontWeight.w900,
                fontSize: 40,
              ),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Enter amount',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Amount',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter number of months',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 8.0),
            SliderTheme(
              data: SliderTheme.of(context).copyWith(
                activeTrackColor: const Color.fromARGB(255, 48, 91, 230),
                inactiveTrackColor: const Color.fromARGB(255, 12, 57, 207),
                thumbColor: const Color.fromARGB(255, 40, 31, 162),
                overlayColor: Colors.blue.withAlpha(32),
              ),
              child: Slider(
                value: 60,
                min: 1,
                max: 60,
                divisions: 59,
                label: '60 months',
                onChanged: (double value) {},
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1'),
                Text('60 luni'),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Enter % per month',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 16.0),
            TextField(
              decoration: InputDecoration(
                labelText: 'Percent',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 56.0),
            // Container cu colțuri rotunjite și text centrat
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // Fundal alb
                borderRadius: BorderRadius.circular(16.0), // Colțuri rotunjite
              ),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 244, 244, 244), // Fundal gri
                      borderRadius: BorderRadius.vertical(top: Radius.circular(16.0)), // Colțuri rotunjite sus
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'You will pay the approximative amount monthly:',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w900,
                            color: Colors.black
                          ),
                        ),
                        SizedBox(height: 8.0),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    alignment: Alignment.center,
                    child: Text(
                          '3.943€', // Textul dorit
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w900,
                            color: const Color.fromARGB(255, 19, 6, 207),
                          ),
                        ),
                  ),
                ],
              ),
            ),
            Spacer(),
            // Butonul cu colțuri rotunjite
            Center(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 19, 6, 207),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0), // Colțuri rotunjite
                  ),
                  padding: EdgeInsets.symmetric(vertical: 16.0), // Ajustare padding pentru a se potrivi cu TextField
                  minimumSize: Size(double.infinity, 56), // Dimensiune egală cu TextField
                ),
                child: Text(
                  'Calculate',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
