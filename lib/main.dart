import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:task2_deltana/View/Home/home-screen.dart';
import 'package:task2_deltana/View/addressScreen/AddressScreen.dart';
import 'package:task2_deltana/View/CashOutView.dart';
import 'package:task2_deltana/ViewModel/Order_ViewModel.dart';
import 'package:task2_deltana/ViewModel/Address_ViewModel.dart';
import 'package:task2_deltana/ViewModel/filterViewModel.dart';
import 'package:task2_deltana/ViewModel/productViewModel.dart';
void main() {
  runApp(DevicePreview(
    builder: (context) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 720),
      minTextAdapt: true,
      builder: (context, child) {
        return MultiProvider(
          providers: [
            ChangeNotifierProvider(create: (context) => OrderViewModel()),
            ChangeNotifierProvider(create: (context) => AddressViewModel()),
            ChangeNotifierProvider(create: (context) => ProductViewModel()..loadProducts()),
            ChangeNotifierProvider(create: (context) => FilterViewModel()),
          ],
          child: MaterialApp(
            useInheritedMediaQuery: true,
            locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,
            debugShowCheckedModeBanner: false,
            home: const HomeScreen(),
            routes: {
              CashOutView.routeName: (context) => const CashOutView(),
              AddressScreen.routeName: (context) => const AddressScreen(),
            },
          ),
        );
      },
    );
  }
}

