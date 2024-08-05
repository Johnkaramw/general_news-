import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class Contenar extends StatelessWidget {
  const Contenar({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: SizedBox(
        height: 150,
        width: 200,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(category.image),
            ),
            color: Colors.red,
            borderRadius: BorderRadius.circular(19),
          ),
          child: Center(
            child: Text(
              category.text,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 0, 0),
                fontSize: 30,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
