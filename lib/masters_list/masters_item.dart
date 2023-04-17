import 'package:flutter/material.dart';
import 'package:uvix_flutter/masters_list/masters_model.dart';

Widget createItem(MasterModel model) {
  return Column(
    children: [
      Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image(image: AssetImage(model.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 46),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    model.author,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Text(
                    'Оказано услуг:${model.countOfServicesRendered}',
                    style: const TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ),
                Row(
                  children: <Widget>[
                    const Image(
                        image: AssetImage('assets/images/commentIcon.png')),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(model.countOfComments),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(
                          image: AssetImage('assets/images/photosIcon.png')),
                    ),
                    Text(model.countOfImages),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Image(
                          image:
                              AssetImage('assets/images/certificateicon.png')),
                    ),
                    Text(model.countOfCertificate),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    ],
  );
}
