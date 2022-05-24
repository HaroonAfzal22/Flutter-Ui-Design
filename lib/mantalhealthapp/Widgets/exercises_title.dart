import 'package:flutter/material.dart';
class ExercisesTitleWidget extends StatelessWidget {
  final Color customColor;
  final IconData customIcon;
  final String exercisesTitle;
  final String exercisesSubTitle;
  const ExercisesTitleWidget({
    Key? key,
    required this.customColor,
    required this.customIcon,
    required this.exercisesTitle,
    required this.exercisesSubTitle

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        child: Container(
          padding: EdgeInsets.all(16),
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                      padding: EdgeInsets.all(16),
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                        color:customColor
                        // Colors.orange,
                      ),
                      child: Icon(customIcon,color: Colors.white,)),
                  const  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(exercisesTitle,style: TextStyle(fontWeight: FontWeight.bold,)),
                      SizedBox(height: 8,),
                      Text(exercisesSubTitle,style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey))
                    ],
                  ),
                ],
              ),
              Icon(Icons.more_horiz)
            ],
          ),
        ),
      ),
    );
  }
}