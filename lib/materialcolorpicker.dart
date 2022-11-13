import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'blocColorPicker.dart';

class MaterialColorPickerWidget extends StatefulWidget {
  const MaterialColorPickerWidget({super.key});

  @override
  State<MaterialColorPickerWidget> createState() => _MaterialColorPickerWidgetState();
}

class _MaterialColorPickerWidgetState extends State<MaterialColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      title: Text("Material Color Picker"),
    ),
    
    body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: MaterialPicker(
  pickerColor: Colors.red, //default color
  onColorChanged: (Color color){ //on color picked
          print(color);
  }, 
),
        ),
 GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 200,
              color: Colors.blue.shade100,
              child: Text(
                '"Block Color Picker" sayfasına geç ',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => BlocColorPickerWidget(),));
            },
          )


      ],
    ),
    
    );
    
    
    
  }
}