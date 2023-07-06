import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pastry_app/core/ColorsClass.dart';
import 'package:pastry_app/core/pastry_Cubit/BlocOpserver.dart';
import 'package:pastry_app/core/pastry_Cubit/pastry_cubit.dart';
import 'package:pastry_app/features/splash/presentation/views/splash_view.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const PastryApp());
}

class PastryApp extends StatelessWidget {
  const PastryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PastryCubit()
        ..getOfferModelsData()
        ..getCategoriesProductModelsData(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
            scaffoldBackgroundColor: Colors.transparent,
            textTheme: GoogleFonts.petronaTextTheme(),
            primaryColor: ColorsClass.brownColor,
            //  scaffoldBackgroundColor: Colors.white,
            elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                backgroundColor: ColorsClass.brownColor,
                shape: const StadiumBorder(),
                maximumSize: const Size(double.infinity, 56),
                minimumSize: const Size(double.infinity, 56),
              ),
            ),
            inputDecorationTheme: const InputDecorationTheme(
              filled: true,
              fillColor: ColorsClass.kPrimaryLightColor,
              iconColor: ColorsClass.brownColor,
              prefixIconColor: ColorsClass.brownColor,
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                borderSide: BorderSide.none,
              ),
            )),
        home: const SplashView(),
      ),
    );
  }
}
