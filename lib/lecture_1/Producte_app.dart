import 'package:flutter/material.dart';

class Product_app extends StatefulWidget {
  const Product_app({Key? key}) : super(key: key);

  @override
  State<Product_app> createState() => _Product_appState();
}

class _Product_appState extends State<Product_app> {
  double pruductvalue = 0;
  List product = [
    {'id': '1', 'Name': 'Watch ', 'Category': 'Wearables', 'price': '999'},
    {
      'id': '2',
      'Name': 'Smart Watch',
      'Category': 'Wearables',
      'price': '1899'
    },
    {
      'id': '3',
      'Name': 'AirPods',
      'Category': 'Electronic Device',
      'price': '21999'
    },
    {
      'id': '4',
      'Name': 'Dell Laptop',
      'Category': 'Electronic Device',
      'price': '32751'
    },
    {
      'id': '5',
      'Name': 'Apple Smart Keyboard',
      'Category': 'Electronic Device',
      'price': '17900'
    },
    {
      'id': '6',
      'Name': 'Vivo Y75 5G',
      'Category': 'Electronic Device',
      'price': '21990'
    },
    {
      'id': '7',
      'Name': 'Apple iPhone 11 Pro',
      'Category': 'Electronic Device',
      'price': '35999'
    },
    {
      'id': '8',
      'Name': 'OPPO A74 5G',
      'Category': 'Electronic Device',
      'price': '15490'
    },
    {
      'id': '9',
      'Name': 'Apple Watch SE with Sport Band',
      'Category': 'Electronic Device',
      'price': '27990'
    },
    {
      'id': '10',
      'Name': 'LORENZ Luxury Leather Watch',
      'Category': 'Electronic Device',
      'price': '381'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Products Filter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            letterSpacing: 2,
          ),
        ),
        leading: Align(
          alignment: Alignment(23, 0),
          child: Icon(Icons.apps_rounded),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              min: 0,
              max: 80000,
              onChanged: (double val) {
                setState(() {
                  pruductvalue = val;
                });
              },
              value: pruductvalue,
            ),
            Text(
              "Product Price < Rs ${pruductvalue.toInt()}",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              child: Column(
                children: product.map((e) {
                  if (double.parse(e['price']) <= pruductvalue) {
                    return Container(
                      margin: const EdgeInsets.all(5),
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      height: 90,
                      width: 480,
                      decoration: BoxDecoration(
                        color: const Color(0xffFFFFFF),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black38,
                            offset: Offset(0, 2),
                            blurRadius: 10,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            e['id'],
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(width: 15),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                e['Name'],
                                style: const TextStyle(
                                  fontSize: 10,
                                  color: Color(0xff222222),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                e['Category'],
                                style: const TextStyle(
                                  fontSize: 20,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Text(
                                "Rs. ${e['price']}",
                                style: const TextStyle(
                                  color: Colors.grey,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }
                  return Container();
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
