import 'package:flutter/material.dart';

class stack_app extends StatefulWidget {
  const stack_app({Key? key}) : super(key: key);

  @override
  State<stack_app> createState() => _stack_appState();
}

class _stack_appState extends State<stack_app> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        centerTitle: true,
        title: Text(
          "Stack App",
          style: TextStyle(color: Colors.black54,fontSize: 20),
        ),
        elevation: 0,

      ),
      body: Stack(
        children: [
          Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10,top: 10),
                child: Container(
                  alignment: Alignment(-0.6, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.purple,
                      borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Purple",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.8,-0.8),
                child: Container(
                  alignment: Alignment(-0.5, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.indigo, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Indigo",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.6,-0.6),
                child: Container(
                  alignment: Alignment(-0.3, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "LightBlue",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.4,-0.4),
                child: Container(
                  alignment: Alignment(-0.6, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.green, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Green",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0.2,-0.2),
                child: Container(
                  alignment: Alignment(-0.6, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Amber",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(-0,-0),
                child: Container(
                  alignment: Alignment(-0.6, -0.8),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "Orange",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Align(
                alignment: Alignment(0.2,0.2),
                child: Container(
                  alignment: Alignment(-0.2, -0.7),
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.redAccent, borderRadius: BorderRadius.circular(20)),
                  child: Text(
                    "RedAccent",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
