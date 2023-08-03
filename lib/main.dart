import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testproject/cubit/collections_cubit.dart';
import 'package:testproject/cubit/favorites_cubit.dart';
import 'package:testproject/cubit/liked_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/home_page/home_page.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/styles/theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  await getIt<BooksPreferences>().clear();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CollectionsCubit>(
          create: (BuildContext context) => CollectionsCubit(),
        ),
        BlocProvider<FavoritesCubit>(
          create: (BuildContext context) => FavoritesCubit(),
        ),
        BlocProvider<LikedCubit>(
          create: (BuildContext context) => LikedCubit(),
        ),
      ],
      child: MaterialApp(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Utwory',
        theme: customTheme,
        home: const HomePage(),
      ),
    );
  }
}
