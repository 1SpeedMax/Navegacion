import 'package:flutter/material.dart'; // Importa los widgets básicos de Flutter
import 'segunda_pantalla.dart'; // Importamos la segunda pantalla para poder navegar hacia ella

void main() => runApp(MyApp()); // Punto de entrada de la app: ejecuta MyApp

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'El Navegante', // Nombre de la aplicación
      home: PantallaPrincipal(), // Pantalla inicial de la app
    );
  }
}

// Pantalla principal del taller
class PantallaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pantalla Principal')), // Barra superior
      body: Center(
        child: ElevatedButton(
          child: Text('Ir a Segunda Pantalla'), // Texto del botón
          onPressed: () async {
            // Usamos async porque vamos a esperar un resultado de la segunda pantalla
            final resultado = await Navigator.push(
              context, // Contexto actual necesario para la navegación
              MaterialPageRoute(
                // MaterialPageRoute crea una **ruta anónima**, útil cuando no necesitamos nombrar la ruta globalmente
                builder: (context) => SegundaPantalla(
                  mensaje: 'Hola desde Principal!', // Paso de datos a la segunda pantalla
                ),
              ),
            );

            // Verificamos si la segunda pantalla devolvió un valor
            if (resultado != null) {
              // Mostrar mensaje usando un SnackBar
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
