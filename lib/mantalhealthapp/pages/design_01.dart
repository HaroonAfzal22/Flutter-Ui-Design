import 'package:flutter/material.dart';
import 'package:ui_practice/mantalhealthapp/Widgets/custum_emoji.dart';
import 'package:ui_practice/mantalhealthapp/Widgets/exercises_title.dart';


class DesignNoOneScreen extends StatelessWidget {
  const DesignNoOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.message,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: ''),
          ],
        ),
        backgroundColor: Colors.blue[800],
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    // App bar Greetings Row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Hi, Jared!
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Hi,Jared!',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            SizedBox(height: 8),
                            Text(
                              '23 jan,2022',
                              style: TextStyle(color: Colors.blue[100]),
                            )
                          ],
                        ),
                        Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                                color: Colors.blue[600],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12))),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    // Search BAr
                    Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          color: Colors.blue[600],
                          borderRadius: BorderRadius.all(Radius.circular(12))),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),

                    // How do you feel
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'How do you feel?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 18),
                        ),
                        Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        CustumEmojiWidget(
                          emoji: '😌',
                          emojiText: 'Badly',
                        ),
                        CustumEmojiWidget(
                          emoji: '🙂',
                          emojiText: 'Fine',
                        ),
                        CustumEmojiWidget(
                          emoji: '☺️',
                          emojiText: 'Well',
                        ),
                        CustumEmojiWidget(
                          emoji: '😀',
                          emojiText: 'Excellent',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Bottum container
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius:const BorderRadius.only(topLeft: Radius.circular(25),topRight: Radius.circular(25))
                  ),
                  padding: EdgeInsets.all(25),

                  child: Center(
                      child: Column(
                    children: [
                      // Exercises row with more icon
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Exercises',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.more_horiz)
                        ],
                      ),
                      // List View
                      const SizedBox(
                        height: 25,
                      ),
                      Expanded(
                          child: ListView(
                        children: const [
                          ExercisesTitleWidget(
                            exercisesTitle: 'Speaking Skills',
                            exercisesSubTitle: '16 Exercises',
                            customColor: Colors.orange,
                            customIcon: Icons.favorite,
                          ),
                          ExercisesTitleWidget(
                            exercisesTitle: 'Reading Skills',
                            exercisesSubTitle: '8 Exercises',
                            customColor: Colors.green,
                            customIcon: Icons.person,
                          ),
                          ExercisesTitleWidget(
                            exercisesTitle: 'Writing Skills',
                            exercisesSubTitle: '20 Exercises',
                            customColor: Colors.pink,
                            customIcon: Icons.star  ,
                          ),

                        ],
                      ))
                    ],
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
