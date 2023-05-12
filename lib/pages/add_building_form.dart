import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
// import 'package:velocity_x/velocity_x.dart';


class ImagePickerButton extends StatefulWidget {
  @override
  _ImagePickerButtonState createState() => _ImagePickerButtonState();
}

class _ImagePickerButtonState extends State<ImagePickerButton> {
  File? _selectedImage;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: source);

    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
        children: [
        Padding(
        padding: const EdgeInsets.all(8.0),
            child: Text(
                'Add Building / Property Images',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
                ),
                ),
                Row(
                children: [
                Expanded(
                child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SizedBox(
                child: ElevatedButton(
                onPressed: () {
                showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                ListTile(
                leading: Icon(Icons.camera),
                title: Text('Take a photo'),
                onTap: () {
                _pickImage(ImageSource.camera);
                Navigator.pop(context);
                },
                ),
                ListTile(
                leading: Icon(Icons.photo_library),
                title: Text('Choose from gallery'),
                onTap: () {
                _pickImage(ImageSource.gallery);
                Navigator.pop(context);
                },
                ),
                ],
                );
                },
                );
                },
                style: ElevatedButton.styleFrom(
                primary: Colors.white, // Set the button background color
                onPrimary: Colors.black, // Set the text color
                ),
                child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                'Upload Image',
                style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.normal,
                ),
                ),
                ),
                ),
                ),
                ),
                ),
                SizedBox(
                height: 65,
                width: 70,
                child: _selectedImage != null
                ? Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                color: Colors.black, // Set the border color
                width: 1, // Set the border width
                ),
                image: DecorationImage(
                image: FileImage(_selectedImage!),
                fit: BoxFit.cover,
                ),
                ),
                ),
                )
                    : Placeholder(fallbackHeight: 90, fallbackWidth: 90),
                ),
                ],
                ),
                SizedBox(height: 19),
                SizedBox(
                height: 70,
                child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                labelText: 'Building / Property Name',
                border: OutlineInputBorder(),
                ),
                ),
                ),
                ),
                SizedBox(
                height: 70,
                child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                labelText: 'Address',
                border: OutlineInputBorder(),
                ),
                ),
                ),
                ),
                SizedBox(
                height: 70,
                child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                labelText: 'PIN CODE',
                border: OutlineInputBorder(),
                ),
                ),
                ),
                ),

        SizedBox(
          height: 70,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'PIN CODE',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 70,
          child: const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                labelText: 'Total Shops / Offices',
                border: OutlineInputBorder(),
              ),
            ),
          ),
        ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Add your next button logic here
                },
                child: Icon(Icons.arrow_forward),
              ),
            ),
          ),
      ],
        )
    );
  }
}