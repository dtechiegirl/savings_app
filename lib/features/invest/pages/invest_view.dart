import 'package:flutter/material.dart';

import '../../home/widgets/vetted_opportunities_section.dart';
import '../widgets/invest_details_card.dart';
import '../widgets/tab_section.dart';

class InvestView extends StatelessWidget {
  const InvestView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Investments"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.info_outline_rounded),
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          InvestDetailsCard(),
          Divider(),
          VettedOpportunitiesSection(),
          TabSection(),
        ],
      ),
    );
  }
}
