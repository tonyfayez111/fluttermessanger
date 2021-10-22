import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget contact() => Column(children: [
      Container(
        child: Row(
          children: [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfZi6q5elXyTE38nTQQnrAYl2Vrl5b_dcxOQ&usqp=CAU'),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.green,
                      radius: 7,
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Text(
                "hello my name is tony fayez shashashashashashashashash ssssssssssssssssssssssssssssssssssssss",
                textAlign: TextAlign.left,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Text("2:00 pm")
          ],
        ),
      ),
    ]);
