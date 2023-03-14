import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Column(children: <Widget>[


              Container(
                padding: const EdgeInsets.only(left: 16),
                child: AspectRatio(
                  aspectRatio: 1.3,
                  child: Align(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/yellow.png'),
                          ),
                        ),
                        child: Row(children: const <Widget>[
                          Image(
                              image: AssetImage('assets/images/uvix_icon.png')),
                        ]),
                      )),
                ),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}