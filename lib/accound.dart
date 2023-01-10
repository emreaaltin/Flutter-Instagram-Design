import 'package:flutter/material.dart';
import 'package:project/util/account_tab1.dart';
import 'package:project/util/account_tab2.dart';
import 'package:project/util/bubble_stories.dart';

class UserAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Image(
                      width: 100,
                      height: 100,
                      image: AssetImage('assets/images/avatar2.png'),
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Text(
                              "124",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Gönderi")
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          child: Column(
                            children: [
                              Text(
                                "3467",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text("Takipçi")
                            ],
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              "3467",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text("Takipçi")
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Text("Emre Altın",
                      style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 5,
                    child: Container(
                      padding: EdgeInsets.all(8),
                      child: Center(
                        child: Text("Kaydedilenler"),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Container(
                    child: Center(
                      child: Icon(Icons.person_add),
                    ),
                  ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  BubbleStories(text: "Hikaye1"),
                  BubbleStories(text: "Hikaye2"),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      children: [
                        Container(
                          width: 45,
                          height: 45,
                          child: Icon(Icons.add),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey[400],
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text("Yeni")
                      ],
                    ),
                  ),
                ],
              ),
            ),
            TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.grid_4x4_rounded),
                ),
                Tab(
                  icon: Icon(Icons.person_pin),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(children: [AccountTab1(), AccountTab2()]),
            )
          ],
        ),
      ),
    );
  }
}
