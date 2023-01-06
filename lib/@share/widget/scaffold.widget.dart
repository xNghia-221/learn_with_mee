import 'package:flutter/material.dart';

class CustomScaffold extends StatefulWidget {
  final PreferredSizeWidget? appBar;
  final Widget body;
  final String titleAppBar;

  const CustomScaffold({
    super.key,
    this.appBar,
    required this.body,
    required this.titleAppBar,
  });

  @override
  _CustomScaffoldState createState() => _CustomScaffoldState();
}

class _CustomScaffoldState extends State<CustomScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBar ??
          AppBar(
            title: Text(widget.titleAppBar ?? ""),
            centerTitle: true,
          ),
      body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => FocusScope.of(context).unfocus(),
          child: widget.body),
      resizeToAvoidBottomInset: true,
    );
  }
}
