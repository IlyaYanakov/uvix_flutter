import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastEndWindowMaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                  child: Image.asset('assets/images/EndWindowImage.png',
                      fit: BoxFit.cover),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: const Text(
                    'Вы успешно прошли регистрацию!',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
                  child: const Text(
                    'Давайте начнем работу - сотни клиентов ждут вас!',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: SizedBox(
                height: 40,
                width: 160,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(11),
                      ),
                    ),
                    child: const Text("Далее",
                        style: TextStyle(
                          fontSize: 22,
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
