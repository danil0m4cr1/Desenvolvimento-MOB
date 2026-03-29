import "package:flutter/material.dart";

class Profile extends StatefulWidget {
  final String? name, age, job, gender, status;
  const Profile({super.key, this.name, this.age, this.job, this.gender, this.status});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile>{

  static const styleOption = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context){
    bool noData = widget.name!.isEmpty || 
                  widget.age!.isEmpty ||
                  widget.job!.isEmpty ||
                  widget.gender!.isEmpty ||
                  widget.status!.isEmpty;
    
    if(noData){
      return Center(
        child: Text(
          "Preencha o formulário!", style: styleOption, textAlign: TextAlign.center,
        ),
      );
    }

    return Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Nome: ${widget.name}", style: styleOption),
              Text("Idade: ${widget.age}", style: styleOption),
              Text("Profissão: ${widget.job}", style: styleOption),
              Text("Genêro: ${widget.gender}", style: styleOption),
              Text("Estado civil: ${widget.status}", style: styleOption),
            ],
          ),
          ),
      );
  }
}