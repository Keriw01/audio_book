import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:just_audio_background/just_audio_background.dart';
import 'package:testproject/blocs/auth/auth_bloc.dart';
import 'package:testproject/pages/collections/cubit/collections_cubit.dart';
import 'package:testproject/pages/books/cubit/favorites_cubit.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/routes/app_router.gr.dart';
import 'package:testproject/service/books_preferences.dart';
import 'package:testproject/service/locator.dart';
import 'package:testproject/styles/theme.dart';

void main() async {
  // Ensure Flutter is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Setup dependency injection
  await setupLocator();

  // Clear books preferences
  await getIt<BooksPreferences>().clear();

  // Initialize JustAudioBackground
  await JustAudioBackground.init(
    androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
    androidNotificationChannelName: 'Audio playback',
    androidNotificationOngoing: true,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // Create an instance of AppRouter
  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    // MultiBlocProvider for managing BLoCs
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AuthBloc(appRouter, context),
          lazy: false,
        ),
        BlocProvider<CollectionsCubit>(
          create: (BuildContext context) => CollectionsCubit(),
        ),
        BlocProvider(
          create: (BuildContext context) => FavoritesCubit(context),
        ),
      ],
      child: MaterialApp.router(
        routerDelegate: appRouter.delegate(),
        routeInformationParser: appRouter.defaultRouteParser(),
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        title: 'Utwory',
        theme: customTheme,
      ),
    );
  }
}
