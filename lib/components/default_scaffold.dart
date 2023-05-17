import 'package:flutter/material.dart';
class DefaultScaffold extends StatelessWidget {
  final List<Widget> children;
  const DefaultScaffold({
    required this.children,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var iconButton = IconButton(
        constraints: const BoxConstraints(),
        padding: EdgeInsets.zero,
        onPressed: () => Navigator.pop(context),
        icon: const Icon(Icons.arrow_back, color: Colors.white, size: 20));
    return Scaffold(
        body: SafeArea(
      child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/darkThemeBackground.png'),
                fit: BoxFit.fill),
          ),
          child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
              ),
              child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    const SizedBox(height: 38),
                    iconButton,
                    ...children,
                  ])))),
    ));
  }
}