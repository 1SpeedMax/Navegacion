import 'package:flutter/material.dart';
import 'segunda_pantalla.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Navegante',
      home: PantallaPrincipal(),
    );
  }
}

class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a Segunda Pantalla'),
          onPressed: () async {
            // Paso de datos a la segunda pantalla
            final resultado = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaPantalla(mensaje: 'Hola desde Principal!'),
              ),
            );

            // Mostrar resultado al regresar
            if (resultado != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Mensaje recibido: $resultado')),
              );
            }
          },
        ),
      ),
    );
  }
}
