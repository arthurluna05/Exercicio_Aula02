import 'package:flutter/material.dart';

class CartaoAluno extends StatelessWidget {
  const CartaoAluno({
    super.key,
    required this.nome,          // required = obrigatório passar
    required this.curso,
    this.periodo = 5,            // com valor padrão = opcional
  });

  final String nome;             // final: configuração imutável
  final String curso;
  final int periodo;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              // primeira letra do nome, em maiúscula
              child: Text(nome.isNotEmpty ? nome[0].toUpperCase() : '?'),
            ),
            const SizedBox(width: 16),        // espaçamento entre os dois
            Expanded(                          // ocupa o espaço que sobrar
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    nome,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text('$curso — $periodoº período'),
                ],
                Column(
                    children: const [
                    CartaoAluno(nome: 'Ana Souza',  curso: 'Sistemas de Informação'),
                    CartaoAluno(nome: 'Bruno Lima', curso: 'Ciência da Computação', periodo: 7),
                        ],
                    )
              ),
            ),
          ],
        ),
      ),
    );
  }
}