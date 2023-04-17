import 'package:flutter/material.dart';

import 'continuation_of_registration_master.dart';

class MasterEndWindow extends StatelessWidget {
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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Image.asset('assets/images/EndWindowImage.png',
                          fit: BoxFit.cover),
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: const Text(
                        'Вы успешно прошли основную регистрацию!',
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            Container(
              padding: const EdgeInsets.only( left: 16, right: 16),
              child: const Text(
                'Вам осталось выбрать сферу вашей деятельности. '
                'Вы можете это сделать сейчас или в любое другое время'
                ' в личном кабинете',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 16,left: 16),
                  child: TextButton(
                      style:
                      TextButton.styleFrom(foregroundColor: Colors.black),
                      onPressed: () {},
                      child: const Text('Пропустить', style: TextStyle(fontSize: 18),)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, right: 16),
                  child: SizedBox(
                    height: 40,
                    width: 160,
                    child: ElevatedButton(
                        onPressed: () {
                          onPressed(context);
                        },
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

          ],
        ),
      ),
    );
  }
  void onPressed(BuildContext context){
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
            (    ContinuationRegistrationMaster())));
  }
}
