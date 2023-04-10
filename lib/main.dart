import 'package:flutter/material.dart';
import 'package:uvix_flutter/login_screen.dart';
import 'package:uvix_flutter/master_salon_screen.dart';

import 'awards_list/awards_list_screen.dart';

void main() {
  runApp(myHomePage());
}

class myHomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return   MaterialApp(
        debugShowCheckedModeBanner: true,
        home: AwardsListScreen()
     );
  }
}
