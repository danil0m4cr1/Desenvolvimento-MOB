import "package:ex02/screens/tela1.dart";
import "package:ex02/screens/tela2.dart";
import "package:flutter/material.dart";

void main(){
  runApp(NavBottom());
}

class NavBottom extends StatelessWidget {
  const NavBottom({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen()
    );
  }
}

class NavScreen extends StatefulWidget {
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen>{
  int selectindex = 0;

  String name = "", age = "", job = "", gender = "", status = "";

  List<Widget> get _widgetOptions => [
    // Funcao da classe de cada screen
    Inputs(onSubmit: (n, a, j, g, s) {
      setState(() {
        name = n;
        age = a;
        job = j;
        gender = g;
        status = s;
      });
    }),
    Profile(
      name: name,
      age: age,
      job: job,
      gender: gender,
      status: status
    )
  ];

  void onItemTapped(int index){
    setState(() {
      selectindex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Interação com Usuário"),
        centerTitle: true,
        backgroundColor: Colors.grey,
      ),

      body: Center(
        child: _widgetOptions.elementAt(selectindex),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
        backgroundColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Perfil"
          )
        ]
      ),
    );
  }
}