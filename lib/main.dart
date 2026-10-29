import 'package:flutter/material.dart';
import 'pages/dashboard_hr.dart';
import 'theme/app_theme.dart';

void main() => runApp(const AplikasiHR());

class AplikasiHR extends StatefulWidget {
  const AplikasiHR({super.key});

  @override
  State<AplikasiHR> createState() => _AplikasiHRState();
}

class _AplikasiHRState extends State<AplikasiHR> {
  ThemeMode _themeMode = ThemeMode.system;

  void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dashboard HR',
      debugShowCheckedModeBanner: false,
      theme: buildLightTheme(),
      darkTheme: buildDarkTheme(),
      themeMode: _themeMode,
      home: DashboardHR(onToggleTheme: _toggleTheme),
    );
  }
}