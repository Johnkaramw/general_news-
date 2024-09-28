import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTop extends StatelessWidget {
  const NewsTop({super.key, required this.articleModel});
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  // إضافة errorBuilder لمعالجة الأخطاء
                  errorBuilder: (context, error, stackTrace) {
                    return Container(
                      height: 200,
                      width: double.infinity,
                      color: Colors.grey[300], // لون خلفية عند فشل تحميل الصورة
                      child: const Center(
                        child: Icon(
                          Icons.error, // أيقونة بديلة عند الفشل
                          color: Colors.red,
                          size: 50,
                        ),
                      ),
                    );
                  },
                )
              : Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.grey[300], // لون خلفية عند عدم توفر صورة
                  child: const Center(
                    child: Text(
                      'No Image Available', // نص بديل عند عدم توفر صورة
                      style: TextStyle(color: Colors.black45),
                    ),
                  ),
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title, // تم تصحيح الحقل من 'titel' إلى 'title'
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 25, fontWeight: FontWeight.w500),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.subtitle ??
              '', // تم تصحيح الحقل من 'subtitel' إلى 'subtitle'
          style: const TextStyle(color: Colors.red, fontSize: 15),
        ),
      ],
    );
  }
}
