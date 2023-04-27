import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test_project/data/app_data.dart';

class AddDemandePage extends StatefulWidget {
  const AddDemandePage({super.key});

  @override
  State<AddDemandePage> createState() => _AddDemandePageState();
}

class _AddDemandePageState extends State<AddDemandePage> {
  addDemande() {}
  var motifController = TextEditingController();
  var contenuController = TextEditingController();
  String userChoice = AppData.userData.first;
  DateTime? userCreneau = DateTime.now();
  double formFieldMargin = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Faire une demande"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
              child: Column(
            children: [
              DropdownButtonFormField(
                  decoration:
                      const InputDecoration(border: OutlineInputBorder()),
                  items: AppData.userData
                      .map((String e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  value: userChoice,
                  onChanged: (value) {
                    setState(() {
                      userChoice = value.toString();
                    });
                  }),
              SizedBox(
                height: formFieldMargin,
              ),
              TextFormField(
                controller: motifController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Tapez le motif"),
              ),
              SizedBox(
                height: formFieldMargin,
              ),
              TextFormField(
                controller: contenuController,
                maxLines: 5,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), hintText: "Tapez le contenu"),
              ),
              SizedBox(
                height: formFieldMargin,
              ),
              GestureDetector(
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    decoration: BoxDecoration(border: Border.all()),
                    child: const Text(
                      "Choisir le créneau",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  onTap: () {
                    showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2022, 10, 10),
                            lastDate: DateTime(2024, 10, 10))
                        .then((value) => userCreneau = value);
                  }),
              SizedBox(
                height: formFieldMargin,
              ),
              ElevatedButton(onPressed: () {}, child: const Text("VALIDER"))
            ],
          )),
        ));
  }
}
