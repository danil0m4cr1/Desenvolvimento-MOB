import "package:flutter/material.dart";

class Mexico extends StatelessWidget {
  const Mexico({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("México", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Text("Tacos", style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Image.asset("images/taco.jpg", width: 200, height: 200)
        ],
      ),
    );
  }
}