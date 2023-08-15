import 'package:exercicio_1/detail_page.dart';
import 'package:flutter/material.dart';

import 'card_noticia.dart';
import 'noticia.dart';

class PaginaDeNoticia extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text('Notícias'),
      ),
      body: ListView.builder(
        itemCount: noticiasAleatorias.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (context) => ConteudoNoticia(noticiasAleatorias[index]),
                ),
              );
            },
            child: CardNoticia(noticiasAleatorias[index]),
          );
        },
      ),
    );
  }
}

List<Noticia> noticiasAleatorias = [
  Noticia(
    titulo: 'Desenvolvedora de jogos polêmicos libera pirataria de seus games; entenda',
    resumoDaNoticia: 'A desenvolvedora do polêmico jogo Postal publicou nas redes sociais que os gamers estão liberados para piratear seus jogos.',
    imagem: 'https://tm.ibxk.com.br/2023/08/14/14143927728256.jpg?ims=704x264',
    conteudoDaNoticia: 'Extremamente exagerada, violenta e politicamente incorreta, a série Postal parece um bebê'
    ' de GTA com Saints Row que teve como babá o protagonista de Bully. Só daí já dá para ter uma ideia do que o'
    ' carro-chefe da Running With Scissors tem para oferecer. Obviamente, dadas as proporções de orçamento, os títulos controversos da RWS são muito mais "baixa renda" do que os games citados anteriormente. Afinal, estamos falando de um estúdio independente.',
  ),
  Noticia(
    titulo: "Baldur's Gate 3: entenda a origem do nome do jogo",
    resumoDaNoticia: "Baldur's Gate 3 foi lançado dia 3 de agosto e está recebendo uma enxurrada de elogios, inclusive sendo um forte candidato a jogo do ano.",
    imagem: 'https://tm.ibxk.com.br/2023/08/15/15181341512388.jpg?ims=704x264',
    conteudoDaNoticia: "Nos anos 1990, a equipe original da BioWare havia criado uma tech demo transpondo a experiência de uma campanha narrativa de RPG para o PC. Ao apresentar a demo para a Interplay," 
    " a publicadora que havia licenciado os direitos para utilizar a marca D&D, entendeu que o projeto tinha potencial para ser adaptado às regras do RPG de mesa, dando origem ao primeiro Baldur's Gate."
    " A narrativa do primeiro jogo acompanha um órfão, aparentemente sem nada de especial, que havia sido adotado pelo mago Gorion. Ao ter seu pai adotivo assassinado, o personagem parte em uma jornada para encontrar os assassinos de Gorion e descobrir os segredos sobre sua própria origem.",
  ),
  Noticia(
    titulo: 'Modern Warfare 3 traz de volta o minimapa clássico de Call of Duty',
    resumoDaNoticia: 'As mudanças para o multijogador de Modern Warfare 3 que agradam ao público continuam chegando.', 
    imagem: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fcdn.wccftech.com%2Fwp-content%2Fuploads%2F2020%2F04%2Fcall-of-duty-MW3-remastered.jpg&f=1&nofb=1&ipt=709dcc6d6c1867f0e2f3b1d3998c611bd40fd04064faf481dd549dea2a010396&ipo=images', 
    conteudoDaNoticia: 'A Infinity Ward dividiu os fãs ao abandonar o antigo minimapa clássico para o reboot de Modern Warfare de 2019, forçando os jogadores a confiar na bússola na parte superior da tela para determinar de onde vem o fogo inimigo.'
    ' O minimapa do Modern Warfare 2 mostra apenas os pontos do jogador inimigo quando um UAV está ativo, o que significa que ele não exibe pontos vermelhos quando os jogadores inimigos correm ou disparam suas armas.'
  ),
  Noticia(
    titulo: "Jogadores de Diablo 4 estão usando masmorra apelidada de 'túneis de dopamina' para subir 40 níveis em 2 horas",
    resumoDaNoticia: 'Os jogadores de Diablo 4 estão explorando a fundo uma masmorra tão cheia de monstros que permite que eles ganhem 40 níveis em apenas duas horas.', 
    imagem: 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwallpaperaccess.com%2Ffull%2F4078681.jpg&f=1&nofb=1&ipt=3ea2c6fd51aa54876da56f46ff6f9cb057969ff45257151d3f5ac6e7d4617bb9&ipo=images', 
    conteudoDaNoticia: 'Esta é uma masmorra em Diablo 4 encontrada na região de Scosglen. Os Túneis Domhainne estão repletos de cabras e morcegos, -- ainda mais do que antes – depois que a Blizzard aumentou'
    ' a densidade de monstros nas Masmorras do Pesadelo e na Maré Infernal para encorajar os jogadores a usá-las e acumular pontos de experiência e pilhagem.'
  )
];