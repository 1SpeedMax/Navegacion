import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  final String mensaje;

  SegundaPantalla({required this.mensaje});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Segunda Pantalla')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(mensaje),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Regresar con mensaje'),
              onPressed: () {
                Navigator.pop(context, '¡Hola desde Segunda Pantalla!');
              },
            ),
          ],
        ),
      ),
    );
  }
}
