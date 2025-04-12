import 'package:flutter/material.dart';

void main() {
  runApp(const CamisasApp()); // código principal do projeto
}

class CamisasApp extends StatelessWidget {
  // cria uma classe e extende para criar o UI
  const CamisasApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mostrarCamisas(), // tela inicial é a classe mostrar camisa
    );
  }
}

// mapa com os nomes e camisas dos times dentro de um map
class mostrarCamisas extends StatelessWidget {
  final List<Map<String, String>> times = [
    {
      "time": "Flamengo",
      "camisa":
          "https://flamengo.vteximg.com.br/arquivos/ids/172211-473-473/IV6048_FR_Torso_eCom-1-removebg-preview--1-.png.png?v=638731666649500000",
    },
    {
      "time": "Vasco",
      "camisa":
          "data:image/jpeg;base64,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",
    },
    {
      "time": "Fluminense",
      "camisa":
          "data:image/jpeg;base64,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",
    },

    {
      "time": "Botafogo",
      "camisa":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMpCkM7mQmvgeKbsFi4-HTWtOJGM7iAwrikg&s",
    },
  ];

  // configuração de toda a interface
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Camisas dos clubes cariocas",
          style: TextStyle(fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemCount: times.length,
          itemBuilder: (context, index) {
            final time = times[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    time["camisa"]!,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    time["time"]!,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("Avaliar"),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
