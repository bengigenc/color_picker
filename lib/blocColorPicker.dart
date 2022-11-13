import 'package:color_picker/multipleColorPicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class BlocColorPickerWidget extends StatefulWidget {
  const BlocColorPickerWidget({super.key});

  @override
  State<BlocColorPickerWidget> createState() => _BlocColorPickerWidgetState();
}

class _BlocColorPickerWidgetState extends State<BlocColorPickerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Block Color Picker"),),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          child: BlockPicker(
  pickerColor: Colors.red, //default color
  onColorChanged: (Color color){ //on color picked
      print(color);
  }, 
)
        ),
 GestureDetector(
            child: Container(
              alignment: Alignment.center,
              height: 60,
              width: 200,
              color: Colors.blue.shade100,
              child: Text(
                '"Multiple Colors Picker" sayfasına geç ',
                style: TextStyle(
                    color: Colors.blue.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => MultipleColorPickerWidget(),));
            },
          )


      ],
    ),
    );
  }
}