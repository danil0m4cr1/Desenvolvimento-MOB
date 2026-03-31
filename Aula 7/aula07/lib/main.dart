import "package:flutter/material.dart";

void main(){
  runApp(TelaPrincipal());
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CampoTexto(),
    );
  }
}

class CampoTexto extends StatefulWidget {
  const CampoTexto({super.key});

  @override
  State<CampoTexto> createState() => _CampoTextoState();
}

class _CampoTextoState extends State<CampoTexto> {

  TextEditingController ctexto = TextEditingController();
  TextEditingController _controller = TextEditingController();
  String? msg;

  void exibir(){
    setState(() {
      print(ctexto.text);
      ctexto.text;
    });
  }

  void limpar(){
    setState(() {
      ctexto.text = "";
      msg = "";
      _controller.text = "";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Aula 07 - Aplicativo Caixa de Texto", style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          TextField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: "Digite seu nome"
            ),
            controller: ctexto,
          ),

          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: "Digite um número"
            ),
            controller: _controller,
            onSubmitted: (text){
              setState(() {
                msg = text;
                print(text);
              });
            },
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: ElevatedButton(onPressed: exibir, child: Text("Exibir")),
              ),
              ElevatedButton(onPressed: limpar, child: Icon(Icons.clear_all))
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: 200,
              height: 50,
              color: Colors.lightBlue,
              child: Text(ctexto.text, style: TextStyle(fontSize: 20, color: Colors.white)),
            ),
          ),

          Container(
            width: 200,
            height: 50,
            color: Colors.lightBlue,
            child: Text('$msg', style: TextStyle(fontSize: 20, color: Colors.white)),
          )
        ],
      ),
    );
  }
}