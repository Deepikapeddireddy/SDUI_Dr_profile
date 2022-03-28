import 'package:en_dynamic_ui/models/experience_model.dart';
import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/radii.dart';
import '../../constants/borders.dart';
import '../../constants/styles.dart';
import '../../constants/strings.dart';
import "../../models/doctor_model.dart";

class Review extends StatelessWidget {
  final ReviewModel exp;

  const Review({Key? key, required this.exp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(),
              ],
            ),
            SizedBox(
              width: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(exp.name,
                    style: BaseStyles.docTitle, textAlign: TextAlign.left),
                Text(
                  exp.date,
                  style: BaseStyles.dateStyle,
                  textAlign: TextAlign.left,
                ),
                Text(
                  exp.review,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  textAlign: TextAlign.left,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
