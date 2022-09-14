import 'package:get_storage/get_storage.dart';
import 'package:heartful/models/article.dart';

Map<String, String> data = {};
void addArticle(Article article) async {
  var local = GetStorage();
  await local.write('1', article.toJson());
}

Article getArticle() {
  var local = GetStorage();
  var article = Article.fromJson(local.read('1'));
  print(article.toJson());
  return article;
}
