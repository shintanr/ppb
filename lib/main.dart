import 'package:fluter_bwa_airplane/cubit/auth_cubit.dart';
import 'package:fluter_bwa_airplane/cubit/destination_cubit.dart';
import 'package:fluter_bwa_airplane/cubit/page_cubit.dart';
import 'package:fluter_bwa_airplane/cubit/seat_cubit.dart';
import 'package:fluter_bwa_airplane/cubit/transaction_cubit.dart';
import 'package:fluter_bwa_airplane/ui/pages/bonus_page.dart';
import 'package:fluter_bwa_airplane/ui/pages/main_page.dart';
import 'package:fluter_bwa_airplane/ui/pages/sign_in_page.dart';
import 'package:fluter_bwa_airplane/ui/pages/sign_up_page.dart';
import 'package:fluter_bwa_airplane/ui/pages/splash_pages.dart';
import 'package:fluter_bwa_airplane/ui/pages/success_checkout_page.dart';
import 'package:flutter/material.dart';
import 'ui/pages/get_started_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
        BlocProvider(
          create: (context) => SeatCubit(),
        ),
        BlocProvider(
          create: (context) => TransactionCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => const SplashPage(),
          '/get-started': (context) => const GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
          '/success': (context) => SuccessCheckoutPage(),
        },
      ),
    );
  }
}
