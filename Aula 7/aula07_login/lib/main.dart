import "package:aula07_login/screens/tela2.dart";
import "package:flutter/material.dart";

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Login(),
  ));
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController user = TextEditingController();
  TextEditingController senha = TextEditingController();

  _verificarLogin(){
    if(user.text == 'senai' && senha.text == '123'){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Tela02()));
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login correto"), duration: Duration(seconds: 5)
      ));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Login incorreto"), duration: Duration(seconds: 5)
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 150,
              child: Image.asset("images/senai.png", fit: BoxFit.fill,),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 50), 
              child: SizedBox(
                height: 250,
                width: 250,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          labelText: "Digite seu nome",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10)
                          )
                        ),
                        controller: user,
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          hintText: "Digite sua senha",
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10))
                        ),
                        obscureText: true,
                        obscuringCharacter: "*",
                        controller: senha,
                      )
                    ),

                    ElevatedButton(onPressed: _verificarLogin, child: Text("Login")),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        user.text = "";
                        senha.text = "";
                      });
                    }, child: Text("Limpar"))
                  ],
                ),
              )
              
              )
          ],
        ),
      ),
    );
  }
}