import 'package:flutter/material.dart';
import 'package:medi_alerta_mobile/main.dart';
import 'alarm.dart';

class ConfirmarAlarma extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 76),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 118,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 76),
                child: GestureDetector(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/checked.png',
                    width: 200,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 50),
          Text(
            'El medicamento fue registrado con éxito',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, color: Color(0xFFF42A855)),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 230,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFF69A7FF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.close, color: Colors.white),
                      SizedBox(width: 8),
                      Text(
                        'Cerrar',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
