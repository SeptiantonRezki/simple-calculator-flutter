import 'package:flutter/material.dart';
import 'package:flutter_ssr_calculator/utils/v_navigation.dart';

class PageSettings extends StatefulWidget {
  const PageSettings({Key? key}) : super(key: key);

  @override
  _PageSettingsState createState() => _PageSettingsState();
}

class _PageSettingsState extends State<PageSettings> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        VNavigation.gotoNavigation(context);
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Settings"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text("Theme"),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
