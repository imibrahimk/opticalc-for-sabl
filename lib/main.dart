import 'package:flutter/material.dart';
import 'package:opticalc/src/providers/card_printer_provider.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'src/providers/bottom_nav_provider.dart';
import 'src/providers/downtime_provider.dart';
import 'src/providers/efficiency_provider.dart';
import 'src/providers/production_provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductionProvider()),
        ChangeNotifierProvider(create: (_) => EfficiencyProvider()),
        ChangeNotifierProvider(create: (_) => CardPrinterProvider()),
        ChangeNotifierProvider(create: (_) => DowntimeProvider()),
        ChangeNotifierProvider(create: (_) => BottomNavProvider()),
      ],
      child: const App(),
    ),
  );
}
