import 'package:color_picker/materialcolorpicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class ColorPickerWidget extends StatefulWidget {
  const ColorPickerWidget({super.key});

  @override
  State<ColorPickerWidget> createState() => _ColorPickerWidgetState();
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Color Picker"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 600,
            width: 400,
            child: ColorPicker(
              pickerColor: Colors.red, //default color
              onColorChanged: (Color color) {
                //on color picked
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
                '"Material Color Picker"  sayfasına geç ',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MaterialColorPickerWidget(),));
            },
          )
        ],
      ),
    );
  }
}
