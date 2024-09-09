import 'package:flutter/material.dart';
import 'package:hr_system/app/image/image.dart';
import 'package:hr_system/widget/text_style.dart';
import '../../../widget/tab_items.dart';

class GeneralPage extends StatefulWidget {
  const GeneralPage({super.key});

  @override
  State<GeneralPage> createState() => _GeneralPageState();
}

class _GeneralPageState extends State<GeneralPage> {
  // String features = "USER MANAGEMENT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 140,
            child: Row(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        TabItemWidget(
                          title: "ក្រុមហ៊ុន",
                          imagePath: AppImage.ic_company,
                        ),
                        TabItemWidget(
                          title: "នាយកដ្ឋាន",
                          imagePath: AppImage.ic_buildding,
                        ),
                        TabItemWidget(
                          title: "ការរិយាល័យ",
                          imagePath: AppImage.ic_office,
                        ),
                        TabItemWidget(
                          title: "មុខដំណែងការងារ",
                          imagePath: AppImage.ic_position,
                        ),
                        TabItemWidget(
                          title: "ជំនាញការងារ",
                          imagePath: AppImage.ic_job,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "ព័ត៍មានអំពីក្រុមហ៊ុន",
                      style: CustomerTextStyle.secondary,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        TabItemWidget(
                          title: "ក្រុមហ៊ុន",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ប្រភេទ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "លក្ខខណ្ឌ",
                          imagePath: AppImage.ic_job,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "ធានារា់រង",
                      style: CustomerTextStyle.secondary,
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        TabItemWidget(
                          title: "ការតាត់ប្រាក់ខែ",
                          imagePath: AppImage.ic_company,
                        ),
                        TabItemWidget(
                          title: "អត្រាការងារថែមម៉ោង",
                          imagePath: AppImage.ic_buildding,
                        ),
                        TabItemWidget(
                          title: "ប្រភេទបុគ្គលិក",
                          imagePath: AppImage.ic_office,
                        ),
                        TabItemWidget(
                          title: "ឈប់សម្រាក់",
                          imagePath: AppImage.ic_position,
                        ),
                        TabItemWidget(
                          title: "សម្ភាសន៍",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "រយៈពេលបង់ប្រាក់",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ការបង់ប្រាក់ទៀងទាត់",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ថ្ងៃធ្វើការ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ផ្លាស់ប្តូរ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ធានាគារ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "សាចញាតិ្ត",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "កិច្ចសន្យាការងារ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ប្រភេទវាយតម្លៃ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "កម្រិតវាយតម្លៃ",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "ប្រភេទប្រាក់បៀវត្ស",
                          imagePath: AppImage.ic_job,
                        ),
                        TabItemWidget(
                          title: "អត្ថប្រយោជន៏",
                          imagePath: AppImage.ic_job,
                        ),
                      ],
                    ),
                    SizedBox(height: 15),
                    Text(
                      "ព័ត៍មានអំពីក្រុមហ៊ុន",
                      style: CustomerTextStyle.secondary,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
