import 'package:demo_project/widgets/cycle_button.dart';
import 'package:demo_project/widgets/note_text.dart';
import 'package:flutter/material.dart';

class ChooseThemeBottomSheet extends StatefulWidget {
  @override
  _ChooseThemeBottomSheetState createState() {
    return _ChooseThemeBottomSheetState();
  }
}

class _ChooseThemeBottomSheetState extends State<ChooseThemeBottomSheet> {
  final List<CycleButtonWidget> _cycleBottomSheet = <CycleButtonWidget>[
    CycleButtonWidget(
      color: Colors.black,
      onPress: () {},
    ),
    CycleButtonWidget(
      color: Colors.grey,
      onPress: () {},
    ),
    CycleButtonWidget(
      color: Colors.pink,
      onPress: () {},
    ),
  ];

  final textNote = 'Choose color change Theme now !';

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.only(
          left: 32.0,
          right: 32.0,
          bottom: 32.0,
          top: 22,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              width: 80,
              height: 8,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
            SizedBox(
              height: 22,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: _cycleBottomSheet.map((widget) {
                return widget;
              }).toList(),
            ),
            SizedBox(
              height: 4,
            ),
            Divider(
              indent: 26.0,
              endIndent: 26.0,
            ),
            SizedBox(
              height: 4,
            ),
            NoteTextWidget(
              text: textNote,
            ),
          ],
        ),
      ),
    );
  }
}
