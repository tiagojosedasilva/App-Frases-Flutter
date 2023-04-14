import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  )
  );
}
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "“Às vezes a gente tem de ser meio louco mesmo, extremamente obstinado, porque a loucura funciona – desde que exista disciplina, um objetivo muito claro, pé no chão e a humildade de saber que a gente vai errar muito, vai aprender com os erros e continuar.”",
    "O fundamental é manter sempre a mesma obsessão em alcançar o sucesso. Ter sucesso não é apenas ter dinheiro, mas sim saber que uma ideia que parece impossível pode vir a ser uma empresa que irá quebrar paradigmas.",
    "Nunca tive sala, ficava no meio de todos os funcionários. Não gosto de nada fechado. Eu gosto muito de gente e acho que todo gestor tem que gostar de gente.",
    "Não adianta só dar um salário para pessoa, porque não é só isso que segura alguém num emprego. É a qualidade de vida, é você conversar e entender as dores dos outros e saber que, às vezes, nem tudo vai estar bem. Não é só produzir, produzir e produzir.",
    "Digo isso há não menos de 50 anos. Não é superstição. O que acredito é que possamos nos motivar para a vida. Quando diz ‘estou cada vez melhor’, você erotiza, ilumina com amor, um olhar, um pensamento, e suas circunstâncias. Você vence a sombra. Assim, convocando a beleza, vence a tendência à banalização da vida, que por vezes predomina à nossa volta.",
    "Existem duas coisas comuns às empresas que dão certo: atendimento ao cliente e inovação. Você deve ter um atendimento ao cliente de primeira, e também estar atento ao que há de novo no mercado, para não ficar para trás.",
    "Foque em um pino de boliche por vez.",
    "Nada é mais rentável do que investir em um negócio. Porém, para ele crescer e trazer retorno, é preciso orientação no meio do caminho.",
    "Tente uma, duas, três vezes e se possível tente a quarta, a quinta e quantas vezes for necessário. Só não desista nas primeiras tentativas, a persistência é amiga da conquista. Se você quer chegar aonde a maioria não chega, faça o que a maioria não faz.",
    "Quando você acredita em algo, acredite até o fim. Não dê margem para nenhum tipo de dúvida.",
  ];

  var _fraseGerada = "Clique para gerar um frase!";

  void _gerarFrase(){
    var _numeroSorteado = Random().nextInt(_frases.length);
    print(_numeroSorteado);
    setState(() {
      _fraseGerada = _frases[_numeroSorteado];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.black,
                fontStyle: FontStyle.italic,
                fontSize: 17
              ),
            ),
            ElevatedButton(
              onPressed: _gerarFrase,
              child: Text(
                "Nova frase",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
              ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.lightGreen,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
