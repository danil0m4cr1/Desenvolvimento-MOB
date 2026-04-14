import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  State<TelaHome> createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {

  TextEditingController ncep = TextEditingController();
  String? logradouro;
  String? bairro;
  String? cidade;
  String? ddd;
  String? estado;

  // Funcao async para consulta de CEP
  _consultaCep() async {
    String url = "https://cep.awesomeapi.com.br/${ncep.text}";

    http.Response response;
    response = await http.get(Uri.parse(url));

    Map<String, dynamic> dados = json.decode(response.body);

    setState(() {
      logradouro = dados['address'];
      bairro = dados['district'];
      cidade = dados['city'];
      ddd = dados['ddd'];
      estado = dados['state'];
    });

    print("Codigo de status da api ${response.statusCode.toString()}");
    print("Resposta da api");
    print("${response.body}");
  }

  _limpar(){
    setState(() {
      ncep.text = "";
      logradouro = "";
      bairro = "";
      cidade = "";
      estado = "";
      ddd = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App Aula 10"),
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite um CEP"
            ),
            controller: ncep,
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(onPressed: _consultaCep, child: Text("Consultar")),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(onPressed: _limpar, child: Text("Limpar")),
            ),
          ),

          Text("Endereco: ", style: TextStyle(fontSize: 18),),
          Text("Logradouro: ${logradouro}", style: TextStyle(fontSize: 18),),
          Text("Bairro: ${bairro}", style: TextStyle(fontSize: 18),),
          Text("Cidade: ${cidade} - ${estado}", style: TextStyle(fontSize: 18),),
          Text("DDD: ${ddd}", style: TextStyle(fontSize: 18),)
        ],
      ),
    );
  }
}