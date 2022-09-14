import 'package:get/get.dart';
import 'package:heartful/localization/app_text.dart';

class AppTranslation extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "hi_IN": {
          AppTexts.destination: "मंज़िल",
          AppTexts.tourism: "पर्यटन",
          AppTexts.notes: "टिप्पणियाँ",
          AppTexts.itinerary: "यात्रा कार्यक्रम",
          AppTexts.membersOnly: "सिर्फ सदस्यों",
          AppTexts.abroad: "विदेश",
          AppTexts.abroad: "विदेश",
        },
        "zh_Ch": {
          AppTexts.destination: "熱門景點",
          AppTexts.tourism: "出國旅遊",
          AppTexts.notes: "台灣旅遊",
          AppTexts.itinerary: "熱搜遊記",
          AppTexts.membersOnly: "我的行程",
          AppTexts.abroad: "會員專區",
          AppTexts.abroad: "會員專區",
        }
      };
}