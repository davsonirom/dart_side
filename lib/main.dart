import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MiaSoftware39());
}

class MiaSoftware39 extends StatelessWidget {
  const MiaSoftware39({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dart Side',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Primiero app flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _frase = 0;
  final List<String> _frasesStarWars = [
    "Que a Força esteja com você.",
    "Eu sou seu pai.",
    "Não me subestime. Eu tenho a Força!",
    "Use a Força, Luke.",
    "É uma armadilha!",
    "Nunca me diga as probabilidades.",
    "Eu sou um Jedi, como meu pai antes de mim.",
    "A Força é forte nesta família.",
    "O lado sombrio é mais sedutor.",
    "Essa é a nave mais rápida da galáxia.",
    "Eu tenho um mau pressentimento sobre isso.",
    "Você era o escolhido!",
    "Eu amo você. Eu sei.",
    "Os cavaleiros de Ren são uma ameaça.",
    "Essa é a nave que fez a Kessel Run em menos de 12 parsecs.",
    "Execute a Ordem 66.",
    "O Império Contra-Ataca.",
    "A Estrela da Morte está totalmente operacional.",
    "Não há emoção, só paz.",
    "Eu tenho esperado por você, Obi-Wan.",
    "Eu senti uma perturbação na Força.",
    "Uma Nova Esperança.",
    "Você não consegue vencer, Darth.",
    "Eu não tenho limites.",
    "Você nunca encontrará um lugar mais miserável de escumalha e vilania.",
    "Essa não é a droide que você está procurando.",
    "É um pedaço de sucata.",
    "Eu não gosto de você. Tenho 20 mil em cima dele.",
    "Eu tenho maus pressentimentos sobre essa missão.",
    "Em uma galáxia muito, muito distante...",
    "Este é o caminho.",
    "Nós não servimos o Lado Sombrio.",
    "A fé em seus amigos é sua fraqueza.",
    "Você está me pedindo para fazer algo impossível.",
    "As palavras de Obi-Wan Kenobi ecoam na Força.",
    "Essa é a forma Jedi.",
    "Você é um mestre Jedi?",
    "Nós servimos a República.",
    "Bem-vindo à resistência.",
    "Acredito que existe outra maneira.",
    "Você é mais corajoso do que imagina.",
    "Você já ouviu falar da Tragédia de Darth Plagueis, o Sábio?",
    "Nós conseguimos, Cheri, nos safamos.",
    "E agora, você morrerá.",
    "Este é o fim de você, meu mestre.",
    "Nada a perder, tenho.",
    "Não tente. Faça ou não faça. Não há tentativa.",
    "Você é uma maravilha em linguagem de computador.",
    "Esta é uma luta de clãs.",
    "Estou com um mau pressentimento sobre isso.",
    "Eu tenho que salvar você.",
    "O caminho do Lado Sombrio é o caminho para muitos poderes que alguns consideram antinaturais.",
    "O que acontece quando perco?",
    "Nós não precisamos de suas ações impetuosas aqui.",
    "Pode não parecer muito, mas é real.",
    "Isso é onde a diversão começa.",
    "O que o Império está fazendo aqui?",
    "Nós reunimos para celebrar seu retorno.",
    "Não se preocupe, confie em mim.",
    "Nós temos você cercado. Eles estão em toda parte.",
    "Você é um Jedi, como meu pai antes de mim.",
    "Nunca diga-me as probabilidades.",
    "Você pode sentir o conflito nele?",
    "Ele estava destinado a trazer equilíbrio à Força.",
    "Eu sinto um grande conflito dentro de você.",
    "A Força estará com você, sempre.",
    "Nunca fiz promessas.",
    "Abaixe seu sabre de luz.",
    "Isto é uma arma mais civilizada para um tempo mais civilizado.",
    "Você não é um Jedi ainda.",
    "Você é um Jedi, seu filho Jedi.",
    "Já ouvi falar deles. Eles são assassinos de Jedi.",
    "Essas não são as drogas que você está procurando.",
    "Use a Força, Luke.",
    "Aqui nada além da dor você encontrará.",
    "Os Sith são os únicos extremos.",
    "Você era o escolhido!",
    "A guerra não faz ninguém grande.",
    "Você é um tolo antigo.",
    "Você é fraco, como seu pai.",
    "Os Sith são nossos inimigos.",
    "Se você não está comigo, está contra mim.",
    "Você subestima o poder do Lado Sombrio.",
    "Você não pode me vencer, Darth.",
    "Onde você está indo, mestre Jedi?",
    "A Força estará com você, sempre.",
    "Toda a minha vida, eu vi através da Força.",
    "Não há emoção, só paz.",
    "Deve haver mais em sua vida do que isso.",
    "Lembre-se, a Força estará sempre com você.",
    "Que a Força esteja com você.",
    "É um pedaço de sucata.",
    "Este é o caminho.",
    "Você já esteve em um planeta vulcânico?",
    "A Força é forte em minha família.",
    "Nós temos muito trabalho a fazer.",
    "É uma armadilha!",
    "O que você acha que você vê?",
    "As probabilidades de sobrevivência são 725 para 1.",
    "A fé em seus amigos é sua fraqueza.",
    "O Império vai derrubar a Aliança Rebelde.",
    "Tudo está bem. Temos toda a situação sob controle.",
    "Você quer voltar para Jakku?",
    "Ele não é um garoto de fazenda de Tatooine.",
    "Nós não somos ninguém. Somos lixo.",
    "Se eu tirar isso, você morre.",
    "Você tem uma parte muito especial a desempenhar em todos esses acontecimentos.",
    "Ninguém pode matar um Jedi.",
    "Nós temos inimigos inesperados em todos os lugares.",
    "A Estrela da Morte está totalmente operacional.",
    "Esta é uma luta que você não pode vencer.",
    "O tempo dos Jedi acabou.",
    "Vocês eram os escolhidos!",
    "Estou mais interessado em encontrar uma maneira de escapar.",
    "O medo é o caminho para o Lado Sombrio.",
    "O que é ela? Ela é linda!",
    "Já é"
  ];

  void _proximaFrase() {
    setState(() {
      _frase = Random().nextInt(_frasesStarWars.length);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/dartforce.png'),
            Expanded(
              child: Text(
                _frasesStarWars[_frase],
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _proximaFrase,
          tooltip: 'Frase',
          child: const Icon(Icons.next_plan_sharp)),
    );
  }
}
