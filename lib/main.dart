import 'package:flutter/material.dart';
import 'package:medi_alerta_mobile/medicine_detail_error.dart';
import 'medicine_detail_tramadol.dart';
import 'medicine_detail_pregabalina.dart';
import 'medicine_detail_tramadol_noche.dart';
import 'medicine_detail_pregabalina_noche.dart';
import 'alarm.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MediAlerta App',
      theme: ThemeData(
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
      ),
      home: const MyHomePage(title: 'MediAlerta App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 76),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Alarma()),
                    );
                  },
                  child: Image.asset(
                    'assets/images/logo.png',
                    width: 118,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 40),
                child: Text(
                  'Medicamentos',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text(
                  'Hoy, martes 04 de marzo de 2025',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 10),
                child: SizedBox(
                  width: 350,
                  height: 61,
                  child: Card(
                    color: Color(0xFFE0FFE7),
                    elevation: 4, // sombra
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Text(
                        "Presione un medicamento para ver su detalle",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: SizedBox(
                  width: 351,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ErrorDetalleMedicamento(),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFE7F1FF),
                      elevation: 4, // sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/info.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            const SizedBox(width: 20),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tramadol',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '02:00 PM',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: SizedBox(
                  width: 351,
                  height: 80,

                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallePregabalina(),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFE7F1FF),
                      elevation: 4, // sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/info.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            const SizedBox(width: 20),

                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pregabalina',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '02:10 PM',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: SizedBox(
                  width: 351,

                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetalleTramadolNoche(),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFE7F1FF),
                      elevation: 4, // sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/info.png', // Ruta de la imagen en tu proyecto
                                width: 24,
                                height: 24,
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ), // Espaciado entre imagen y texto
                            // Texto a la derecha
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Tramadol',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '08:00 PM',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, top: 15),
                child: SizedBox(
                  width: 351,
                  height: 80,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DetallePregabalinaNoche(),
                        ),
                      );
                    },
                    child: Card(
                      color: Color(0xFFE7F1FF),
                      elevation: 4, // sombra
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/images/info.png',
                                width: 24,
                                height: 24,
                              ),
                            ),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pregabalina',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),

                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text(
                                  '08:10 PM',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Poppins',
                                    color: Color(0xFF1D1B20),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),

      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 5, spreadRadius: 2),
          ],
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Container(
                width: 74,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFFBFDAFF),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(Icons.calendar_month),
              ),
              label: 'Medicamentos',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.alarm),
              label: 'Crear alarma',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Configurar alarma',
            ),
          ],
          selectedItemColor: Color(0xFF1D1B20), // Color del ítem seleccionado
          unselectedItemColor: Color(
            0XFF49454F,
          ), // Color de los ítems no seleccionados
        ),
      ),
    );
  }
}
