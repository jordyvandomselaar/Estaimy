import 'package:flutter/material.dart';

class EstimationCard extends StatelessWidget {
  final String estimation;

  const EstimationCard({Key key, this.estimation}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
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
                    child: Container(
                      color: Colors.black,
                      child: Text(estimation,
                          style: TextStyle(
                              fontSize: 200,
                              backgroundColor: Colors.black,
                              color: Colors.white)),
                    ),
                  ),
                ),
              ),
            ),
          ));
        }));
      },
      child: SizedBox(
        width: 120,
        height: 120,
        child: Center(
          child: Hero(
            tag: this.estimation,
            child: Material(
              child: Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        spreadRadius: 1,
                      )
                    ]
                ),
                child: Text(estimation,
                    style: TextStyle(
                      fontSize: 50,
                      backgroundColor: Colors.black,
                      color: Colors.white,
                    )),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
