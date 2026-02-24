import 'package:flutter/material.dart';

class Pagina3 extends StatelessWidget {
  const Pagina3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      appBar: AppBar(
        title: const Text(
          'Página 3',
          style: TextStyle(
            fontWeight: FontWeight.bold, 
            color: Colors.deepPurple, 
            letterSpacing: 1.0,
          ),
        ),
        backgroundColor: Colors.white, 
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.deepPurple), 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                // Actualizado a withValues
                color: Colors.white.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.check_circle_rounded, 
                size: 100, 
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 40),
            const Text(
              '¡Misión Cumplida!',
              style: TextStyle(
                fontSize: 28, 
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Navegación completada con éxito',
              style: TextStyle(
                fontSize: 16, 
                // Actualizado a withValues
                color: Colors.white.withValues(alpha: 0.8),
              ),
            ),
            const SizedBox(height: 60),
            
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                elevation: 10,
                shadowColor: Colors.black26,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
              icon: const Icon(Icons.home_rounded),
              label: const Text(
                'Volver al Inicio',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}