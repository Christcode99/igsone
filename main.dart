// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:igsappone/signup.dart';

void main() {
  runApp(login());
}

// ignore: camel_case_types
class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: InkWell(
              onTap: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => signup(),
                //     ));
              },
              child: Text("login here")),
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/nature.webp"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: (Column(
                children: [
                  Row(
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      Text('welcome  \nback',
                          style: TextStyle(
                              fontSize: 20, color: Colors.blueAccent)),
                      Image(
                        image: AssetImage('assets/images/img2.webp'),
                        width: 200,
                        height: 100,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Email', border: OutlineInputBorder()),
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  (Container(
                    margin: EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'password', border: OutlineInputBorder()),
                      obscureText: true,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.blue,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 18),
                    child: Row(
                      children: const [
                        Icon(Icons.check_box),
                        Text("remind"),
                        SizedBox(width: 150),
                        Text("forgot password"),
                      ],
                    ),
                  ),
                  SizedBox(height: 100),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(400, 50),
                      maximumSize: const Size(400, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Oreo()),
                      );
                    },
                    child: Text(
                      'login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(child: Divider(thickness: 1.5)),
                      Padding(
                          padding: EdgeInsets.all(8),
                          child: Text("login here")),
                      Expanded(child: Divider(thickness: 1.5)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: const [
                      SizedBox(width: 150),
                      Icon(Icons.facebook),
                      Icon(Icons.telegram),
                      Icon(Icons.discord),
                      Icon(Icons.apple),
                    ],
                  ),
                ],
              )),
            ),
          ),
        ));
  }
}
 /* class login extends StatelessWidget {
  const login({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login page",
      home: Scaffold(
        appBar: AppBar(
          title: Text("login here"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(10),
            child: (Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Text('welcome  \nback',
                        style:
                            TextStyle(fontSize: 20, color: Colors.blueAccent)),
                    Image(
                      image: AssetImage('assets/images/img2.webp'),
                      width: 200,
                      height: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'email'),
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                (Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    decoration: InputDecoration(hintText: 'password'),
                    obscureText: true,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.blue,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                )),
                Row(
                  children: [
                    Icon(Icons.check_box),
                    Text('remenber me', style: TextStyle(height: 20)),
                    Text('forgot password',
                        style: TextStyle(
                          color: Colors.indigo,
                          height: 10,
                        )),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => sign()),
                      );
                    },
                    child: Text('login')),
                Row(
                  children: [
                    Expanded(child: Divider(thickness: 1.5)),
                    Padding(
                        padding: EdgeInsets.all(8), child: Text("login where")),
                    Expanded(child: Divider(thickness: 1.5)),
                  ],
                ),
              ],
            )),
          ),
        ),
      ),
    );
  }
}
 */ 