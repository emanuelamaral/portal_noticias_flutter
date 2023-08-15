import 'package:exercicio_1/noticia.dart';
import 'package:flutter/material.dart';


class ConteudoNoticia extends StatelessWidget {
  final Noticia noticias;
  
  ConteudoNoticia(this.noticias);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(noticias.titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(noticias.imagem),
            const SizedBox(height: 16.0),
            Text(noticias.conteudoDaNoticia),
          ],
        ),
      ),
    );
  }
}
