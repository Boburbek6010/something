import 'package:learn_english_word_by_word/menu/all_words_menu.dart';
import 'package:learn_english_word_by_word/menu/create_word_menu.dart';
import 'package:learn_english_word_by_word/menu/etid_word_menu.dart';
import 'package:learn_english_word_by_word/menu/home_menu.dart';
import 'package:learn_english_word_by_word/menu/select_delete_menu.dart';
import 'package:learn_english_word_by_word/menu/test_menu.dart';
import 'package:learn_english_word_by_word/menu/view_one_word_menu.dart';
import 'package:learn_english_word_by_word/services/ext_service.dart';
import 'package:learn_english_word_by_word/services/lang_service.dart';
import 'package:learn_english_word_by_word/services/word_service.dart';



void main() async {
  // // print(TestMenu().adding());
  // TestMenu testMenu = TestMenu();
  // testMenu.comparison();
  font1("welcome".tr);

  MyApp(
    home: HomeMenu(),
    locale: await LangService.currentLanguage(),
    routes: {
      HomeMenu.id: HomeMenu(),
      CreateWordMenu.id: CreateWordMenu(),
      AllWordsMenu.id: AllWordsMenu(),
      ViewOneWordMenu.id: ViewOneWordMenu(),
      EditWordMenu.id: EditWordMenu(),
      SelectDeleteMenu.id: SelectDeleteMenu(),
      TestMenu.id: TestMenu(),
    },
  );

}
