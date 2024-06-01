import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        "en_US": {"message": "Hello", "name": "Poonam"},
        "hi_IN": {"message": "नमस्कार", "name": "पूनम"},
        "pa_IN": {"message": "ਸਤਿ ਸ਼੍ਰੀ ਅਕਾਲ", "name": "ਪੂਨਮ"},
        "ur_PK": {"message": "ہیلو", "name": "پونم"},
      };
}
