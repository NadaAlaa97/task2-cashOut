import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/utils/MyTheme.dart';
import '../../../ViewModel/filterViewModel.dart';

class FilterModalBottomSheet extends StatelessWidget {
  const FilterModalBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Consumer<FilterViewModel>(builder: (context, viewModel, child) {
          return Container(
            color: Colors.white,
            height: 800.h,
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text('التصنيف',
                      style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.spMin,
                          fontFamily: 'IBM Plex Sans Arabic',
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.close, size: 25.spMin,),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: viewModel.filters.length,
                    itemBuilder: (context, index) {
                      return Row(crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(flex: 2,
                            child: InkWell(
                              onTap: () {
                                viewModel.filterChoice(viewModel.filters[index]);
                              },
                              child: Container(
                                padding: const EdgeInsets.symmetric(vertical: 8.0),
                                margin: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 4),
                                decoration: BoxDecoration(
                                  color: viewModel.categoryColors[index],
                                  border: Border.all(color: Colors.grey),
                                ),
                                child: Center(
                                  child: Text(
                                    viewModel.categories[index % viewModel.categories.length],
                                    style: const TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8.0),
                          SizedBox(
                            width: 40,
                            child: Checkbox(
                              value: viewModel.selectedFilters.contains(viewModel.filters[index]),
                              onChanged: (bool? value) {
                                viewModel.filterChoice(viewModel.filters[index]);
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(100.spMin),
                              ),
                              activeColor: MyTheme.yellowColor,
                            ),
                          ),
                          Expanded(
                            flex: 4,
                            child: Text(viewModel.filters[index]),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40.w,
                      child: FloatingActionButton(
                        onPressed: () {
                          viewModel.applyFilters();
                          Navigator.of(context).pop();
                        },
                        elevation: 0,
                        backgroundColor: MyTheme.yellowColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.spMin),
                        ),
                        child: Text('تفعيل',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.spMin,
                            fontFamily: 'IBM Plex Sans Arabic',
                            color: MyTheme.blackColor,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 40.w,
                      child: FloatingActionButton(
                        onPressed: () {
                          viewModel.resetFilters();
                        },
                        elevation: 0,
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.spMin),
                          side: const BorderSide(color: MyTheme.yellowColor),
                        ),
                        child: Text('اعاده تعيين',
                          style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20.spMin,
                            fontFamily: 'IBM Plex Sans Arabic',
                            color: MyTheme.yellowColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
