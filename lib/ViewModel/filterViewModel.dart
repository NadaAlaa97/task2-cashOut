import 'package:flutter/material.dart';
import 'package:task2_deltana/utils/MyTheme.dart';

class FilterViewModel extends ChangeNotifier {
  Set<String> selectedFilters = {};

  List<String> categories = [
    'الماركه', 'السعر', 'نوع سماعات الصوت', 'وصلت حديثاً', 'نوع التوصيل', 'اللون'];

  List<String> filters = ['سماعات الرأس العازلة', 'سماعات الرأس اللاسلكية', 'سماعات الأذن اللاسلكية',
    'سماعات الرأس الرياضية',
    'سماعات الرأس فوق الأذن',
    'سماعات الأذن',
    'سماعات الألعاب',
    'سماعات الرأس عالية الدقة',
    'سماعات الرأس الافتراضية',
    'سماعات الرأس المدمجة'
  ];

  List<Color> categoryColors = [];

  FilterViewModel() {
    categoryColors = List<Color>.filled(filters.length, Colors.white);
  }

  void filterChoice(String filter) {
    if (selectedFilters.contains(filter)) {
      selectedFilters.remove(filter);
    } else {
      selectedFilters.add(filter);
    }
    updateCategoryColor();
    notifyListeners();
  }

  void updateCategoryColor() {
    for (int i = 0; i < categoryColors.length; i++) {
      categoryColors[i] = selectedFilters.contains(filters[i])
          ? MyTheme.innerContainer
          : Colors.white;
    }
    notifyListeners();
  }
  void applyFilters() {
    notifyListeners();
  }

  void resetFilters() {
    selectedFilters.clear();
    updateCategoryColor();
  }
}
