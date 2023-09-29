import 'package:flutter/material.dart';

class DynamicCheckBox extends StatefulWidget {
  const DynamicCheckBox({super.key});

  @override
  State<DynamicCheckBox> createState() => _DynamicCheckBoxState();
}

class _DynamicCheckBoxState extends State<DynamicCheckBox> {
  List<Map> categories = [
    {"name": "Swimming", "isChecked": false},
    {"name": "Cycling", "isChecked": false},
    {"name": "Tennis", "isChecked": false},
    {"name": "Boxing", "isChecked": false},
    {"name": "Volleyball", "isChecked": false},
    {"name": "Bowling", "isChecked": false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        elevation: 0,
        title: Text(
          'Dynamic CheckBox',
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Please Choose Your Favorite Category = ',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 10),
              Divider(thickness: 4, color: Colors.green),
              SizedBox(height: 10),
              Column(
                children: categories.map((favorite) {
                  return CheckboxListTile(
                      activeColor: Colors.deepPurple,
                      checkboxShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      title: Text(favorite['name']),
                      value: favorite["isChecked"],
                      onChanged: (val) {
                        setState(() {
                          favorite['isChecked'] = val;
                        });
                      });
                }).toList(),
              ),
              SizedBox(height: 10),
              Divider(thickness: 4, color: Colors.green),
              SizedBox(height: 10),
              Wrap(
                children: categories.map((favorite) {
                  if (favorite["isChecked"] == true) {
                    return Card(
                      elevation: 3,
                      color: Colors.deepPurpleAccent,
                      child: Padding(
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              favorite['name'],
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 5),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  favorite["isChecked"] = !favorite["isChecked"];
                                });
                              },
                              child: Icon(
                                Icons.delete,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return Container();
                  }
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
