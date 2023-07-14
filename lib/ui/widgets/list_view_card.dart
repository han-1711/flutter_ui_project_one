import 'package:flutter/material.dart';

import '../../constant/const.dart';

class ListViewCard extends StatelessWidget {
  const ListViewCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      padding: EdgeInsets.all(10),
      itemBuilder: (context, index) {
        return Container(
          child: Card(
            color: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            elevation: 6,
            child: Stack(
              children: [
                Image.asset(
                  'lib/assets/cardoval.png',
                  fit: BoxFit.cover,
                ),
                Container(
                  width: 225,
                  padding: EdgeInsets.all(kPadding * 1.5),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Project 1",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Front-End Development",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Text(
                        "November 17, 2020",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
