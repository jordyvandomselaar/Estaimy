import 'package:flutter/material.dart';

class EstimationCard extends StatelessWidget {
  final String estimation;

  const EstimationCard({Key key, this.estimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute<void>(builder: (BuildContext context) {
          return Scaffold(
              body: SizedBox.expand(
            child: InkWell(
              onTap: () => Navigator.of(context).pop(),
              child: Center(
                child: Hero(
                  tag: this.estimation,
                  child: Material(
                    child: Text(estimation,
                        style: TextStyle(
                            fontSize: 128, backgroundColor: Colors.white)),
                  ),
                ),
              ),
            ),
          ));
        }));
      },
      child: SizedBox(
        width: 100,
        height: 100,
        child: Center(
          child: Hero(
            tag: this.estimation,
            child: Material(
              child: Text(estimation,
                  style:
                      TextStyle(fontSize: 24, backgroundColor: Colors.white)),
            ),
          ),
        ),
      ),
    ));
  }
}
