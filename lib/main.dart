import 'package:app_numero3/presentation/screens/home_page.dart';
import 'package:app_numero3/presentation/services/morty_services.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => MortyServices(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: '/home',
        routes: {
          '/home': (context) => HomePage(),
        },
        theme: ThemeData(
          useMaterial3: true,
        ),
      ),
    );
  }
}
