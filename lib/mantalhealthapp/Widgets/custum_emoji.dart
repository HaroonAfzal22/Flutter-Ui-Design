import 'package:flutter/material.dart';
class CustumEmojiWidget extends StatelessWidget {
  final String emoji;
  final String emojiText;
  const CustumEmojiWidget({
    Key? key,
    required this.emoji,
    required this.emojiText
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(color: Colors.blue[600],
                borderRadius: BorderRadius.all(Radius.circular(12))),
            child: Text(emoji,style: TextStyle(fontSize: 22),)
        ),
        SizedBox(height: 8,),
        Text(emojiText,style: TextStyle(color: Colors.white),)
      ],
    );
  }
}