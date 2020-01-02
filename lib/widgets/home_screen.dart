import 'package:estaimy/widgets/estimation_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estaimy", style: Theme.of(context).textTheme.display1),
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 20),
        child: Center(
          child: Wrap(
            children: <Widget>[
              EstimationCard(estimation: "0"),
              EstimationCard(estimation: "1/2"),
              EstimationCard(estimation: "1"),
              EstimationCard(estimation: "2"),
              EstimationCard(estimation: "3"),
              EstimationCard(estimation: "5"),
              EstimationCard(estimation: "8"),
              EstimationCard(estimation: "13"),
              EstimationCard(estimation: "20"),
              EstimationCard(estimation: "40"),
              EstimationCard(estimation: "100"),
              EstimationCard(estimation: "∞"),
            ],
          ),
        ),
      ),
    );
  }
}
