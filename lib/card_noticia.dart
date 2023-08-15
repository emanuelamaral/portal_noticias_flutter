import 'package:flutter/material.dart';

import 'noticia.dart';

class CardNoticia extends StatelessWidget {
  final Noticia noticias;

  CardNoticia(this.noticias);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Image.network(noticias.imagem),
          ListTile(
            title: Text(noticias.titulo),
            subtitle: Text(noticias.resumoDaNoticia),
          ),
        ],
      ),
    );
  }
}
