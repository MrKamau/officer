import 'package:flutter/material.dart';
import 'package:officer/core/data/datasources/local_storage_data_source.dart';
import 'package:officer/core/presentation/widgets/nps_app_bar.dart';
import 'package:officer/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _officerName = '';
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadOfficerName();
  }

  Future<void> _loadOfficerName() async {
    final name = await getData('name');
    setState(() {
      _officerName = (name != null && name.isNotEmpty) ? name : 'Officer';
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      appBar: const NpsAppBar(),
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator()
            : Text(
                'Welcome $_officerName',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF0F172A),
                ),
              ),
      ),
    );
  }
}
