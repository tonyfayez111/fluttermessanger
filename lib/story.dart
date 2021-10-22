import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget story() => Row(children: [
      Container(
        width: 80,
        child: Column(
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
              height: 6,
            ),
            Text(
              "tony fayez ",
              textAlign: TextAlign.right,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      )
    ]);
