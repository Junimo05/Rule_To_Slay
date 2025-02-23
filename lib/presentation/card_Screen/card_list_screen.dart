import 'package:flutter/material.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/bottom_decor_bar.dart';
import 'package:rule_to_slay/presentation/widgets/common/appbar/top_app_decor_bar.dart';

class CardListScreen extends StatefulWidget {
  const CardListScreen({super.key});

  @override
  State<StatefulWidget> createState() => _CardListScreenState();
}

class _CardListScreenState extends State<CardListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      bottomNavigationBar: BottomDecorBar(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: Container(
        child: Text('Card List'),
      ),
    );
  }
}
