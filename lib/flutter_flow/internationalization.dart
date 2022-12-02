import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['th', 'en'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? thText = '',
    String? enText = '',
  }) =>
      [thText, enText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // homeDashboard
  {
    '18gf65a3': {
      'th': 'สวัสดีผู้เยี่ยมชม1 :',
      'en': 'Hello visitors :',
    },
    '9hsxnag0': {
      'th': 'หน้าหลัก',
      'en': 'main page',
    },
    'f5pv3b4b': {
      'th': 'ประวัติความเป็นมา',
      'en': 'History',
    },
    'gkwpukkt': {
      'th': 'Home',
      'en': 'Home',
    },
  },
  // travel
  {
    's4t2jrvh': {
      'th': 'สวัสดีผู้เยี่ยมชม :',
      'en': 'Hello visitors',
    },
    'rm7aj95m': {
      'th': 'สถานที่แนะนำ',
      'en': 'recommended place',
    },
    '23vszj0g': {
      'th': 'Home',
      'en': 'Home',
    },
  },
  // activity
  {
    'e16rf6ka': {
      'th': 'สวัสดีผู้เยี่ยมชม :',
      'en': 'Hello visitors',
    },
    'vm6csqor': {
      'th': 'กิจกรรมของหน่วยงาน',
      'en': 'agency activities',
    },
    'gf44clbe': {
      'th': 'คลิกดูรายละเอียด',
      'en': 'Click to see details',
    },
    'vbct20xl': {
      'th': 'คลิกเพื่อดูรายละเอียด',
      'en': 'Click to view details',
    },
    'y53dnsfy': {
      'th': 'Home',
      'en': 'Home',
    },
  },
  // news
  {
    'ajj0s50v': {
      'th': 'สวัสดีผู้เยี่ยมชม :',
      'en': 'Hello visitors',
    },
    'ipp959k5': {
      'th': 'ข่าวประชาสัมพันธ์',
      'en': 'press release',
    },
    '0wt761t9': {
      'th': 'ข่าวประชาสัมพันธ์ของหน่วยงาน',
      'en': 'Agency press releases',
    },
    'whj2jqek': {
      'th': 'Home',
      'en': 'Home',
    },
  },
  // topNav
  {
    'l4fv8684': {
      'th': 'หน้าหลัก',
      'en': 'main page',
    },
    'py53yla4': {
      'th': 'Job Posts',
      'en': 'Job Posts',
    },
    'md0zx9rz': {
      'th': 'Applications',
      'en': 'Applications',
    },
    'ey70o50i': {
      'th': 'Search job posts...',
      'en': 'Search job posts...',
    },
    '8i47x5jp': {
      'th': 'Raquel M.',
      'en': 'Raquel M.',
    },
    'xzynsd9s': {
      'th': 'HR Manager',
      'en': 'HR Manager',
    },
    'vx5wysko': {
      'th': 'Dashboard',
      'en': 'Dashboard',
    },
    'zfsq3qab': {
      'th': 'Analytics',
      'en': 'Analytics',
    },
    'f948kyoz': {
      'th': 'Market',
      'en': 'Market',
    },
  },
  // topNav_v2
  {
    'fmk6k12e': {
      'th': 'หน้าหลัก',
      'en': 'main page',
    },
    't5xl2x3k': {
      'th': 'สถานที่แนะนำ',
      'en': 'recommended place',
    },
    '77ts9wl8': {
      'th': 'กิจกรรม',
      'en': 'activity',
    },
    'hr74vhli': {
      'th': 'ข่าวประชาสัมพันธ์',
      'en': 'press release',
    },
    'wtkgypcy': {
      'th': 'เทศบาลเมืองขลุง',
      'en': 'Khlung Municipality',
    },
    '9rs0den5': {
      'th': 'หน้าหลัก',
      'en': 'main page',
    },
    '16kkit2v': {
      'th': 'สถานที่แนะนำ',
      'en': 'recommended place',
    },
    'nhm7r7ci': {
      'th': 'กิจกรรม',
      'en': 'activity',
    },
    'x7bngneb': {
      'th': 'ข่าวประชาสัมพันธ์',
      'en': 'press release',
    },
  },
  // interest
  {
    'c7lk0usu': {
      'th': 'รายละเอียด',
      'en': 'details',
    },
    'x820uqq9': {
      'th': 'ปิด',
      'en': 'Close',
    },
  },
  // place_rec
  {
    'oubhrp95': {
      'th': 'สถานที่แนะนำ',
      'en': 'recommended place',
    },
    'liazorao': {
      'th': 'คลิกเพื่อดูภาพตัวอย่าง',
      'en': 'Click to view sample images.',
    },
    'd30bdcen': {
      'th': 'ปิด',
      'en': 'Close',
    },
  },
  // activity_comp
  {
    'm2i81a2n': {
      'th': 'รายละเอียด',
      'en': 'details',
    },
    '9vzhznb5': {
      'th': 'ปิด',
      'en': 'Close',
    },
  },
  // news_comp
  {
    'pbvv81qv': {
      'th': 'รายละเอียด',
      'en': 'details',
    },
    '6a35fqyg': {
      'th': 'คลิกเพื่อดูไฟล์เอกสาร',
      'en': 'Click to view document file',
    },
    'ysxd8uxf': {
      'th': 'ปิด',
      'en': 'Close',
    },
  },
  // Miscellaneous
  {
    '5yw9gslf': {
      'th': '',
      'en': '',
    },
    'i5cp4fjn': {
      'th': '',
      'en': '',
    },
    'uysolw5c': {
      'th': '',
      'en': '',
    },
    'u2trw9i1': {
      'th': '',
      'en': '',
    },
    'o7hqw1zj': {
      'th': '',
      'en': '',
    },
    'n80lnndn': {
      'th': '',
      'en': '',
    },
    'ydrxlkdy': {
      'th': '',
      'en': '',
    },
    'zo6e6ccb': {
      'th': '',
      'en': '',
    },
    'ng6c4tk5': {
      'th': '',
      'en': '',
    },
    'xrshhmeg': {
      'th': '',
      'en': '',
    },
    'pizqevc3': {
      'th': '',
      'en': '',
    },
    'bsyanjl2': {
      'th': '',
      'en': '',
    },
    'q05j9zk5': {
      'th': '',
      'en': '',
    },
    '6qhmbhey': {
      'th': '',
      'en': '',
    },
    'hkliudr6': {
      'th': '',
      'en': '',
    },
    't0oomno1': {
      'th': '',
      'en': '',
    },
    'n8uhiv4r': {
      'th': '',
      'en': '',
    },
    'eq1wgtgb': {
      'th': '',
      'en': '',
    },
    '56yoo3gy': {
      'th': '',
      'en': '',
    },
    '3w2i95nu': {
      'th': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
