import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(debugShowCheckedModeBanner: false, home: Exercicio4()),
  );
}

class Exercicio4 extends StatelessWidget {
  const Exercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de Inserir Imagem'),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=600&h=300&fit=crop',
              width: 350,
              height: 200,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 40),

            Container(
              width: 200,
              height: 200,
              color: Colors.black,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image.network(
                  'https://images.unsplash.com/photo-1507525428034-b723cf961d3e?w=400&h=400&fit=crop',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
