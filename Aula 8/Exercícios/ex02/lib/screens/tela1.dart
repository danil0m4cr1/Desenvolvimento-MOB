import "package:flutter/material.dart";

class Inputs extends StatefulWidget {
  const Inputs({super.key, required this.onSubmit});

  final Function(String, String, String, String, String) onSubmit;


  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs>{
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController jobController = TextEditingController();
  String name = "", age = "", job = "";
  int ? selectedGender, selectedStatus;

  @override
  Widget build(BuildContext context){
    return SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 26, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: "Nome"),
              ),

              SizedBox(height: 20),

              TextField(
                controller: ageController,
                decoration: InputDecoration(labelText: "Idade"),
              ),

              SizedBox(height: 20),

              TextField(
                controller: jobController,
                decoration: InputDecoration(labelText: "Profissão"),
              ),

              SizedBox(height: 20),

              Text("Qual seu gênero?"),

              RadioListTile<int>(
                value: 1,
                title: Text("Masculino"),
                groupValue: selectedGender,
                onChanged: (value){
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),

              RadioListTile<int>(
                value: 2,
                title: Text("Feminino"),
                groupValue: selectedGender,
                onChanged: (value){
                  setState(() {
                    selectedGender = value;
                  });
                },
              ),

              SizedBox(height: 20),

              Text("Estado civil:"),

              RadioListTile<int>(
                value: 1,
                title: Text("Solteiro"),
                groupValue: selectedStatus,
                onChanged: (value){
                  setState(() {
                    selectedStatus = value;
                  });
                },
              ),

              RadioListTile<int>(
                value: 2,
                title: Text("Casado"),
                groupValue: selectedStatus,
                onChanged: (value){
                  setState(() {
                    selectedStatus = value;
                  });
                },
              ),

              RadioListTile<int>(
                value: 3,
                title: Text("Divorciado"),
                groupValue: selectedStatus,
                onChanged: (value){
                  setState(() {
                    selectedStatus = value;
                  });
                },
              ),

              RadioListTile<int>(
                value: 4,
                title: Text("Viúvo"),
                groupValue: selectedStatus,
                onChanged: (value){
                  setState(() {
                    selectedStatus = value;
                  });
                },
              ),

              SizedBox(height: 20),

              ElevatedButton(
                onPressed: (){
                  if(selectedGender == null || selectedStatus == null) return;
                  
                  String genderText = selectedGender == 1 ? "Masculino" : "Feminino";
                  String statusText = {
                    1: "Solteiro",
                    2: "Casado",
                    3: "Divorciado",
                    4: "Viúvo"
                  }[selectedStatus] ?? "";

                  widget.onSubmit(
                    nameController.text,
                    ageController.text,
                    jobController.text,
                    genderText,
                    statusText
                  );
                },
                child: Text("Concluir"),
              ),
            ],
          ),
        ),
    );
  }
} 