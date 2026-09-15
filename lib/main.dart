import 'package:flutter/material.dart';

void main() {
  runApp(const MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lista de Alunos'),
        ),
        body: const ListaAlunos(),
      ),
    );
  }
}

class ListaAlunos extends StatelessWidget {
  const ListaAlunos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CartaoAluno(
          nome: 'Ana Souza',
          curso: 'Sistemas de Informação',
        ),
        CartaoAluno(
          nome: 'Bruno Lima',
          curso: 'Ciência da Computação',
          periodo: 7,
        ),
      ],
    );
  }
}

class CartaoAluno extends StatelessWidget {
  const CartaoAluno({
    super.key,
    required this.nome,
    required this.curso,
    this.periodo = 5,
  });

  final String nome;
  final String curso;
  final int periodo;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              child: Text(
                nome.isNotEmpty ? nome[0].toUpperCase() : '?',
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium,
                  ),
                  Text('$curso — $periodoº período'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}