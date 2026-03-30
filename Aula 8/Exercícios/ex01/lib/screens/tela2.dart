import "package:flutter/material.dart";

class Italia extends StatelessWidget {
  const Italia({super.key});

  @override
  Widget build(BuildContext context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Itália", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          Text("Pizza", style: TextStyle(fontSize: 30)),
          SizedBox(height: 20),
          Image.asset("images/pizza.jpg", width: 200, height: 200)
        ],
      ),
    );
  }
}