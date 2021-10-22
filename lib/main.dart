import 'package:flutter/material.dart';
import 'package:test/contact.dart';
import 'package:test/story.dart';

var Hpass = true;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var emailcontroller = TextEditingController();

  var passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(50.0),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                ),
                TextField(
                  controller: emailcontroller,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: emailcontroller.clear,
                        icon: Icon(Icons.close)),
                    prefixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: TextField(
                    obscureText: Hpass,
                    controller: passwordcontroller,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              Hpass = !Hpass;
                            });
                          },
                          icon: Icon(Icons.remove_red_eye)),
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(),
                      labelText: "password",
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(color: Colors.green, spreadRadius: 3),
                    ],
                  ),
                  width: double.infinity,
                  child: MaterialButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => page2())),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 40, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class page2 extends StatelessWidget {
  const page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomSheet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: IconButton(onPressed: null, icon: Icon(Icons.chat))),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child: IconButton(onPressed: null, icon: Icon(Icons.people))),
            SizedBox(
              width: 10,
            ),
            Expanded(
                child:
                    IconButton(onPressed: null, icon: Icon(Icons.video_call))),
            SizedBox(
              width: 10,
            )
          ],
        ),
        appBar: AppBar(
          titleSpacing: 20,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SafeArea(
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                  radius: 17,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRfZi6q5elXyTE38nTQQnrAYl2Vrl5b_dcxOQ&usqp=CAU'),
                ),
              ],
            ),
          ),
          title: Text(
            "Chats",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
          actions: [
            Row(
              children: [
                IconButton(
                  onPressed: null,
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.camera_alt_outlined,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: null,
                  icon: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.edit,
                      size: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(
                        width: 15,
                      ),
                      Text("Search"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 90,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => story(),
                  itemCount: 15,
                ),
              ),
              Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => contact(),
                      separatorBuilder: (context, index) => SizedBox(
                            height: 20,
                          ),
                      itemCount: 15)),
            ],
          ),
        ));
  }
}
