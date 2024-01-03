
import "dart:math";

import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  ));


  }

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
  @override
  State<Home> createState() => _HomeState();

class _HomeState extends State<Home> {

  //Criando o array com as frases
  var listaFrases = [
    "A simplicidade é a sofisticação final.",
    "Aspirar para inspirar antes de expirar.",
    "A realidade está errada, os sonhos são reais.",
    "Abrace a bagunça maravilhosa que você é."
  ];

  //variavel que vai armazenar o caminho da imagem do biscoito
  var imgBiscoito = "images/biscoit.png";

  //variavel que guarda a frase da sorte
  var fraseDaSorte = "Clique no botão para gerar a frase!";

  //metodo que quebra o biscoito
  void quebrarBiscoito(){
    var numero = Random().nextInt(listaFrases.length);

    setState((){
      fraseDaSorte = listaFrases[numero];
      imgBiscoito = "images/broken.png";
    });

  }
  @override
    Widget build(BuildContext context) {
      return Scaffold(
          appBar:  AppBar(
            title: Text("Biscoito da sorte", style:
            TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white
            )),
            centerTitle:true,
            backgroundColor: Colors.purple
      ),
          body: Center(
            child: Padding(
              padding: EdgeInsets.all(60),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  CircleAvatar(
                       backgroundImage:  AssetImage(imgBiscoito),
                      radius:80,
                      backgroundColor: Colors.white
                  ),
                  Text(fraseDaSorte,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize:30)),

                  ElevatedButton(
                      onPressed: quebrarBiscoito
                      ,
                      child: Text("Quebrar biscoito"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.purple,
                          foregroundColor: Colors.white
                      )
                  )
                ],

              )
            )

  )
      );
    }
  }


