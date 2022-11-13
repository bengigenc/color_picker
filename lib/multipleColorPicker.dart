import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import 'colorPickerWidget.dart';

class MultipleColorPickerWidget extends StatefulWidget {
  const MultipleColorPickerWidget({super.key});

  @override
  State<MultipleColorPickerWidget> createState() => _MultipleColorPickerWidgetState();
}

class _MultipleColorPickerWidgetState extends State<MultipleColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Color Picker"),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            child: MultipleChoiceBlockPicker(
  pickerColors: [Colors.red, Colors.orange], //default color
  onColorsChanged: (List<Color> colors){ //on colors picked
      print(colors);
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => ColorPickerWidget(),));
            },
          )
        ],
      ),
    );
  }
}