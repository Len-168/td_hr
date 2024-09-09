import 'package:flutter/material.dart';
import 'package:hr_system/features/staff_infomation/view/staff_infomation.dart';
import '../../../widget/app_bar.dart';
import '../../../widget/eleveted_button.dart';
import '../../genaral/view/general_page.dart';
import '../../setting/view/setting_page.dart';

class LayoutPage extends StatefulWidget {
  const LayoutPage({super.key});

  @override
  State<LayoutPage> createState() => _LayoutPageState();
}

class _LayoutPageState extends State<LayoutPage> {
  String features = "TEST";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        backgroundColor: Colors.blue,
        title: "រយៈពេលប្រាក់បៀវត្ស - ប្រព័ន្ធគ្រប់គ្រងធនធានមនុស្ស",
      ),
      body: Column(
        children: [
          Row(
            children: [
              ...allTabBar(),
            ],
          ),
          Expanded(
            child: FeatureSwitching(),
          ),
        ],
      ),
    );
  }

  StatefulWidget FeatureSwitching() {
    if (features == "SETTING") {
      return GeneralPage();
    } else if (features == "STAFF_INFO") {
      return StaffInfomation();
    }
    return SettingPage();
  }

  List<Widget> allTabBar() {
    return [
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ការកំណត់",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ការកំណត់ទូទៅ",
        onPressed: () {
          features = "SETTING";
          setState(() {});
        },
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ព័ត៍មានបុគ្គលិក",
        onPressed: () {
          features = "STAFF_INFO";
          setState(() {});
        },
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ការគ្រប់គ្រង",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "វត្តមាននិយោជិក",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ចងការប្រាក់",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "ប្រាក់បៀរត្ស",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "គ្រាប់គ្រងការប្រើប្រាស់",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "រចនាប័ទ្ម",
        onPressed: () {},
      ),
      ElevetedButtonWidget(
        radius: 0,
        hitText: "របាយការណ៏",
        onPressed: () {},
      ),
    ];
  }
}
