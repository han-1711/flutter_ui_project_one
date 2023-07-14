import 'package:flutter/material.dart';
import 'package:flutter_ui_project_one/constant/const.dart';
import 'package:flutter_ui_project_one/ui/widgets/text_button_slide.dart';

import '../../../widgets/list_view_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(
            top: kPadding,
            left: kPadding,
          ),
          height: size.height * 0.1,
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Hello Rohan!\n".toUpperCase(),
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: kFont,
                  ),
                ),
                const TextSpan(
                  text: "Have a nice day",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: ktFont,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          height: size.height * 0.3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButtonSlide(
                bColor: Colors.white,
                tColor: kFont,
                text: "My Tasks",
                onPressed: () {},
              ),
              TextButtonSlide(
                bColor: Colors.white,
                tColor: kFont,
                text: "In-progress",
                onPressed: () {},
              ),
              TextButtonSlide(
                bColor: Colors.white,
                tColor: kFont,
                text: "Completed",
                onPressed: () {},
              ),
            ],
          ),
        ),
        Container(
          // height: size.height * 0.4,
          // color: Colors.blue,
          margin: EdgeInsets.only(
            // left: kPadding,
            // right: kPadding,
            top: size.height * 0.2,
            bottom: size.height * 0.4,
          ),
          child: const ListViewCard(),
        ),
        Container(
          width: size.width,
          margin: EdgeInsets.only(
            top: size.height * 0.5,
            left: kPadding,
            right: kPadding,
          ),
          child: const Text(
            "Progress",
            style: TextStyle(
              color: kFont,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          width: size.width,
          margin: EdgeInsets.only(
            top: size.height * 0.55,
            left: kPadding,
            right: kPadding,
          ),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                elevation: 6,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.only(right: kPadding),
                  margin: const EdgeInsets.only(
                    top: kPadding * 0.2,
                    left: kPadding * 0.8,
                    bottom: kPadding * 0.2,
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 100,
                        padding: const EdgeInsets.all(kPadding),
                        margin: const EdgeInsets.only(
                          top: kPadding * 0.2,
                          left: kPadding * 2.5,
                          bottom: kPadding * 0.2,
                        ),
                        child: const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Project 1",
                              style: TextStyle(
                                color: kFont,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "Front-End Development",
                              style: TextStyle(
                                color: ktFont,
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.more_vert),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(15),
                            ),
                            color: Colors.blue,
                          ),
                          height: 55,
                          width: 55,
                          child: Image.asset(
                            'lib/assets/book.png',
                            fit: BoxFit.scaleDown,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
