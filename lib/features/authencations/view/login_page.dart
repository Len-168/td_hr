import 'package:flutter/material.dart';

import '../../../app/image/image.dart';
import '../widget/auth_text_field.dart';
import '../widget/check_box.dart';
import '../widget/eleveted_button.dart';
import '../../layout/view/layout.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});
  String? selectedValue; // Initial value

  List<String> dropdownItems = ['Option 1', 'Option 2', 'Option 3'];
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            child: const Image(
              fit: BoxFit.cover,
              image: AssetImage(AppImage.bg_image),
            ),
          ),
          Positioned(
            bottom: 230,
            right: 180,
            child: _buildLoginContent(),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginContent() {
    return Container(
      // color: Colors.blue,
      width: 500,
      height: 300,
      child: Column(
        children: [
          AuthTextFieldWidget(
            hintText: "ឈ្មោះអ្នកប្រើប្រាស់",
            prefixIcon: Icon(Icons.person),
          ),
          SizedBox(height: 20),
          AuthTextFieldWidget(
            hintText: "លេខសម្ងាត់",
            prefixIcon: Icon(Icons.lock),
            suffixIcon: Icon(Icons.visibility_off),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButton<String>(
              elevation: 0,
              isExpanded: true,
              dropdownColor: Colors.white,
              value: widget.selectedValue,
              hint: Text('សាខា'),
              items: widget.dropdownItems.map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  widget.selectedValue = newValue;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: [
                CheckBoxWidget(
                  onChanged: (p0) {},
                  plachoder: "ចង់ចាំខ្ញុំ",
                ),
              ],
            ),
          ),
          Row(
            children: [
              ElevetedButtonWidget(
                hitText: "ចាកចេញ",
                onPressed: () {},
              ),
              SizedBox(width: 20),
              ElevetedButtonWidget(
                hitText: "ចូស",
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => LayoutPage(),
                    ),
                    (route) => false,
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }
}
