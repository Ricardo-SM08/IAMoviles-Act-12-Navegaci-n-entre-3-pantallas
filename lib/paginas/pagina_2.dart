import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
  const Pagina2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F4FA), 
      appBar: AppBar(
        title: const Text(
          'Segunda Página 6°J',
          style: TextStyle(
            color: Color(0xFF8E4585), 
            fontWeight: FontWeight.w800,
          ),
        ),
        backgroundColor: Colors.white, 
        iconTheme: const IconThemeData(color: Colors.black), 
        elevation: 2,
        // Actualizado a withValues
        shadowColor: const Color(0xFF8E4585).withValues(alpha: 0.2),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(12), 
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    // Actualizado a withValues
                    color: const Color(0xFF8E4585).withValues(alpha: 0.15),
                    blurRadius: 25,
                    offset: const Offset(0, 15),
                  ),
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://raw.githubusercontent.com/Ricardo-SM08/imagenes-para-flutter-6-J-11-febrero-2026/refs/heads/main/rines.jpg',
                  width: 240,
                  height: 240,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 60),
            
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF8E4585), 
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 18),
                elevation: 8,
                // Actualizado a withValues
                shadowColor: const Color(0xFF8E4585).withValues(alpha: 0.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/pagina3');
              },
              icon: const Icon(Icons.rocket_launch),
              label: const Text(
                'Avanzar a la Página 3',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}