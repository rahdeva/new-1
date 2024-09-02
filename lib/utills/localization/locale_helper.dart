import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import '/data/local/storage/storage_constants.dart';
import '/data/local/storage/storage_manager.dart';
import '/resources/resources.dart';

class LocaleHelper {
  final List<Map<String, dynamic>> locales = [
    {'name': 'English', 'locale': const Locale('en')},
    {'name': 'Indonesia', 'locale': const Locale('id')}
  ];

  final fallbackLocale = const Locale('en');

  showLocaleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Choose Language"),
          content: SizedBox(
            width: double.maxFinite,
            child: ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      updateLocale(context, locales[index]['locale'],
                          locales[index]['name'].toString());
                    },
                    child: Padding(
                      padding: EdgeInsets.all(10.sp),
                      child: Text(locales[index]['name'].toString()),
                    )),
                separatorBuilder: (context, index) => const Divider(
                      color: AppColors.black,
                    ),
                itemCount: locales.length),
          ),
        );
      },
    );
  }

  updateLocale(BuildContext context, Locale locale, String name) {
    saveLanguagesToCache(name);
    Navigator.of(context).pop();
    Get.updateLocale(locale);
  }

  saveLanguagesToCache(String name) {
    if (name == "English") {
      StorageManager().write(StorageName.CURRENT_LOCALE, "en");
    } else {
      StorageManager().write(StorageName.CURRENT_LOCALE, "in");
    }
  }

  Locale getCurrentLocale() {
    var currentLocale = StorageManager().get(StorageName.CURRENT_LOCALE);
    if (currentLocale != null) {
      if (currentLocale == "en") {
        return const Locale('en');
      } else {
        return const Locale('id');
      }
    } else {
      return const Locale('en');
    }
  }
}
