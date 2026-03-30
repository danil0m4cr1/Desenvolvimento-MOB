import "package:flutter/material.dart";
import "package:ex01/screens/tela1.dart";
import "package:ex01/screens/tela2.dart";
import "package:ex01/screens/tela3.dart";
import "package:ex01/screens/tela4.dart";


void main(){
  runApp(BottomNavigator());
}

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NavScreen()
    );
  }
}

class NavScreen extends StatefulWidget{
  const NavScreen({super.key});

  @override
  State<NavScreen> createState() => _NavScreenState();

}

class _NavScreenState extends State<NavScreen>{
  int selectindex = 0;

  static const List<Widget> _widgetOptions = <Widget> [
    Brasil(),
    Italia(),
    Japao(),
    Mexico()
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
        title: Text("Aplicativo de Paises"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: _widgetOptions.elementAt(selectindex)
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectindex,
        selectedItemColor: Colors.white,
        onTap: onItemTapped,
        backgroundColor: Colors.blueAccent,
        items: <BottomNavigationBarItem>[

          BottomNavigationBarItem(
            icon: Image.asset(
              "images/Brasil.png",
              width: 24,
              height: 24,
              ),
            label: "Brasil"
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "images/Italia.png",
              width: 24,
              height: 24,
              ),
            label: "Itália"
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "images/Japao.png",
              width: 24,
              height: 24,
              ),
            label: "Japao"
          ),

          BottomNavigationBarItem(
            icon: Image.asset(
              "images/Mexico.png",
              width: 24,
              height: 24,
              ),
            label: "México"
          )
      ]
      )
    );
  }
}

