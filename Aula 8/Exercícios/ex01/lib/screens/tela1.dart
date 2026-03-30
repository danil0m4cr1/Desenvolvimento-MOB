import "package:flutter/material.dart";

class Brasil extends StatelessWidget {
  const Brasil({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Brasil", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Text("Feijoada", style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Image.asset("images/feijoada.jpg", width: 200, height: 200),
        ],
    ));
  }
}