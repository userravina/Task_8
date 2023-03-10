import 'package:flutter/material.dart';

class emi_Calcu extends StatefulWidget {
  const emi_Calcu({Key? key}) : super(key: key);

  @override
  State<emi_Calcu> createState() => _emi_CalcuState();
}

class _emi_CalcuState extends State<emi_Calcu> {
  double amount = 0, rate = 0, year = 0, ans = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "EMI CALCULATOR",
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 1,
          ),
        ),
        leading: Icon(Icons.list_alt_outlined, size: 40),
        backgroundColor: Colors.pink,
      ),
      body: Stack(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.pink,
              boxShadow: [
                BoxShadow(
                  color: Colors.black45,
                  blurRadius: 5,
                  spreadRadius: 7,
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 50),
                Text(
                  "$ans",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "your Loan Emi is per Month",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 25, top: 200, right: 25),
            child: Container(
              height: 450,
              alignment: Alignment.center,
              width: 450,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loan Amount",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${amount.toInt()}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: amount,
                    thumbColor: Colors.pink,
                    divisions: 100,
                    max: 10000000,
                    activeColor: Colors.pinkAccent,
                    onChanged: (value) {
                      setState(() {
                        amount = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Intrest Rate",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "${rate.toInt()}%",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: rate,
                    thumbColor: Colors.pink,
                    divisions: 30,
                    max: 30,
                    activeColor: Colors.pinkAccent,
                    onChanged: (value) {
                      setState(() {
                        rate = value;
                      });
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Loan Year ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "$year",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  Slider(
                    value: year,
                    thumbColor: Colors.pink,
                    divisions: 30,
                    max: 30,
                    activeColor: Colors.pinkAccent,
                    onChanged: (value) {
                      setState(() {
                        year = value;
                      });
                    },
                  ),
                  Container(
                    height: 40,
                    width: 120,
                    color: Colors.pink,
                    child: Center(
                        child: InkWell(
                      onTap: () {
                        setState(() {
                          ans = amount * rate / 100;
                        });
                      },
                      child: Text("Calculater",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                    )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
