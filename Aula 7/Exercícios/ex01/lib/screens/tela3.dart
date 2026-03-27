import "package:flutter/material.dart";

class Japao extends StatelessWidget {
  const Japao({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Japão", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Text("Sushi", style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Image.asset("images/sushi.jpg", width: 200, height: 200)
        ],
      )
    );
  }
}