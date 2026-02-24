import 'package:flutter/material.dart';
import 'paginas/pagina_1.dart';
import 'paginas/pagina_2.dart';
import 'paginas/pagina_3.dart';

void main() {
  runApp(const MiAplicacion());
}

class MiAplicacion extends StatelessWidget {
  const MiAplicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navegación Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Pagina1(),
        '/pagina2': (context) => const Pagina2(),
        '/pagina3': (context) => const Pagina3(),
      },
    );
  }
}