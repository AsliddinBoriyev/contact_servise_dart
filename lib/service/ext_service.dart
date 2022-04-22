

extension ExtString on String {
  String get tr {
    switch(LangService.language) {
      case Language.en: return enUS[this] ?? this;
      case Language.ru: return ruRU[this] ?? this;
      case Language.uz: return uzUZ[this] ?? this;
    }
  }

  int get toInt {
    return int.tryParse(this) ?? 0;
  }

  double get toDouble {
    return double.tryParse(this) ?? 0;
  }

  bool get toBool {
    if(this == "true") {
      return true;
    } else {
      return false;
    }
  }
}