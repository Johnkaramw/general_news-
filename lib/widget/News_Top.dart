import 'package:flutter/material.dart';

class NewsTop extends StatelessWidget {
  const NewsTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.asset(
            'assets/Technology-Watch.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          'التكنولوجيا لغه العصر الحالى وكل العصور القادمة  لمده لا تقل عن عشر قرون وسوف تقوم بمهام الانسان كليا ',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 12,
        ),
        Text(
          'للمزيد من الاخبار حول التكنولوجيا تابع هذه الاخبار ',
          style: TextStyle(color: Colors.red, fontSize: 15),
        ),
      ],
    );
  }
}
