import 'package:flutter/material.dart';

import '../widgets/my_todo_section.dart';
import '../widgets/suggestions_section.dart';
import '../widgets/top_savings_section.dart';
import '../widgets/user_balance_card.dart';
import '../widgets/vetted_opportunities_section.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello Anthony",
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            Text(
              "Do more with your finances",
              style: TextStyle(
                fontSize: 12.0,
              ),
            )
          ],
        ),
        actions: [
          IconButton(
            color: Colors.blue,
            onPressed: (){},
            icon: Icon(
              Icons.account_circle,
              size: 40,
            )
          )
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          UserBalanceDetails(),
          MyTodoSection(),
          TopSavingsSection(),
          SuggestionsSection(),
          VettedOpportunitiesSection(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        shape: CircleBorder(),
        onPressed: (){
          print("FAB CLICKED");
        },
      ),
    );
  }
}
