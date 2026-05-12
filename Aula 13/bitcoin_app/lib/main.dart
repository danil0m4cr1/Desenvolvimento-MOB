import "dart:convert";

import "package:flutter/material.dart";
import "package:http/http.dart" as http;

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Conversor(),
  ));
}

class Conversor extends StatefulWidget {
  const Conversor({super.key});

  @override
  State<Conversor> createState() => _ConversorState();
}

class _ConversorState extends State<Conversor> {
  TextEditingController valor = TextEditingController();
  TextStyle selectStyle = TextStyle(fontSize: 18);
  int ? selectOptionSource;
  int ? selectOptionDest;

  String valorBitcoin = "";
  String valorConversao = "";

  leituraBotao(){
    if(valor.text != ""){
      double? valorConvertido;
      double valorCalc = double.parse(valor.text);

      String moeda = "";
      switch(selectOptionDest){
        case 1:
          moeda = "BRL";
          break;
        case 2:
          moeda = "USD";
          break;
        case 3:
          moeda = "EUR";
      }

      switch(selectOptionSource){
        case 1:
          if(selectOptionDest == 1){
            valorConvertido = double.parse(valor.text);
          } else if(selectOptionDest == 2){
            valorConvertido = valorCalc  * 0.20;
          } else {
            valorConvertido = valorCalc * 0.17;
          }
          break;
        case 2:
          if(selectOptionDest == 1){
            valorConvertido = valorCalc * 4.91;
          } else if(selectOptionDest == 2){
            valorConvertido = double.parse(valor.text);
          } else {
            valorConvertido = valorCalc * 0.85;
          }
          break;
        case 3:
          if(selectOptionDest == 1){
            valorConvertido = valorCalc * 5.77;
          } else if(selectOptionDest == 2){
            valorConvertido = valorCalc * 1.17;
          } else {
            valorConvertido = double.parse(valor.text);
          }
          break;
      }

      valorConversao = "$moeda $valorConvertido";
      return valorConversao;
    } else {
      return;
    }
  }

  Future<void> buscarBitcoin() async {
    final url = Uri.parse("https://blockchain.info/ticker");

    final response = await http.get(url);

    if(response.statusCode == 200){
      final dados = jsonDecode(response.body);

      final brl = dados["BRL"];

      setState(() {
        valorBitcoin = "R\$ ${brl["buy"]}";
      });
    } else {
      print("Erro ao buscar bitcoin");
    }
  }

  @override
  void initState() {
    super.initState();

    buscarBitcoin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("App Consulta Preco BitCoin", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          Image.asset("images/bitcoin.jpg", width: double.infinity),

          Padding(
            padding: EdgeInsetsGeometry.all(16),
            child: Text("Valor do BitCoin: $valorBitcoin", style: TextStyle(fontSize: 22),),
          ),
          
          
          SizedBox(
            width: 360,
            child: TextField(
              keyboardType: TextInputType.number,
              controller: valor,
              decoration: InputDecoration(
                labelText: "Digite o numero a ser convertido",
              ),
            ),
          ),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 16, horizontal: 0),
            child: Row(
              children: [
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Text("Origem", style: selectStyle,),
                      
                      RadioListTile<int>(
                        value: 1,
                        title: Text("R\$"),
                        groupValue: selectOptionSource,
                        onChanged: (value){
                          setState(() {
                            selectOptionSource = value;
                          });
                        },
                      ),

                      RadioListTile<int>(
                        value: 2,
                        title: Text("Dólar"),
                        groupValue: selectOptionSource,
                        onChanged: (value){
                          setState(() {
                            selectOptionSource = value;
                          });
                        },
                      ),

                      RadioListTile<int>(
                        value: 3,
                        title: Text("Euro"),
                        groupValue: selectOptionSource,
                        onChanged: (value){
                          setState(() {
                            selectOptionSource = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Text("Destino", style: selectStyle,),
                      
                      RadioListTile<int>(
                        value: 1,
                        title: Text("R\$"),
                        groupValue: selectOptionDest,
                        onChanged: (value){
                          setState(() {
                            selectOptionDest = value;
                          });
                        },
                      ),

                      RadioListTile<int>(
                        value: 2,
                        title: Text("Dólar"),
                        groupValue: selectOptionDest,
                        onChanged: (value){
                          setState(() {
                            selectOptionDest = value;
                          });
                        },
                      ),

                      RadioListTile<int>(
                        value: 3,
                        title: Text("Euro"),
                        groupValue: selectOptionDest,
                        onChanged: (value){
                          setState(() {
                            selectOptionDest = value;
                          });
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),

          if (valor.text != "")
            Text("Valor a ser convertido: ${valor.text}", style: selectStyle),

          Text("Valor convertido: $valorConversao", style: selectStyle),

          Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: (){
                    buscarBitcoin();
                  }, 
                  child: Text("Verificar")
                ),

                SizedBox(width: 20,),

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      leituraBotao();
                    });
                  }, 
                  child: Text("Calcular")
                ),

                SizedBox(width: 20,),

                ElevatedButton(
                  onPressed: (){
                    setState(() {
                      valorConversao = "";
                      valor.text = "";
                    });
                  }, 
                  child: Text("Limpar")
                ),
              ],
            ),
          )
          
        ],
      ),
    );
  }
}