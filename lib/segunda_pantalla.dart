import 'package:flutter/material.dart';

// Segunda pantalla que recibe un mensaje desde la pantalla principal
class SegundaPantalla extends StatelessWidget {
  final String mensaje; // Variable que almacena el mensaje recibido

  // Constructor: usamos 'required' para asegurar que siempre se pase un mensaje
  SegundaPantalla({required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')), // Barra superior
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra los widgets verticalmente
          children: [
            Text(mensaje), // Mostramos el mensaje recibido
            SizedBox(height: 20), // Separación visual de 20 píxeles
            ElevatedButton(
              child: Text('Regresar con mensaje'),
              onPressed: () {
                // Al presionar, eliminamos la pantalla de la pila y devolvemos un valor
                Navigator.pop(context, '¡Hola desde Segunda Pantalla!');
                // Esto permite que la pantalla principal reciba datos de regreso
              },
            ),
          ],
        ),
      ),
    );
  }
}
