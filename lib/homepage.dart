import 'package:admin/managecomplaints.dart';
import 'package:admin/manageuser.dart';
import 'package:admin/managewarrenty.dart';
import 'package:admin/myshop.dart';
import 'package:admin/orders.dart';
import 'package:admin/products.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    List<Map<String, dynamic>> items = [
      {
        'title': 'Manage\nUser',
        'page': ManageUser()
      },
      {
        'title': 'Manage\nComplaints',
        'page': ManageComplaints()
      },
      {
        'title': 'Manage\nWarranty',
        'page': ManageWarranty()
      },
      {
        'title': 'Products',
        'page': Products()
      },
      {
        'title': 'Orders',
        'page': Orders()
      },
      {
        'title': 'My Shop',
        'page': MyShop()
      },
    ];

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/white-texture.jpg"),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Text(
                'ProductCarePro.\nAdmin',
                style: TextStyle(
                    fontSize: height * 0.02,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey.shade700),
              ),
            ),
            SizedBox(
              height: height * 0.1,
            ),
            Row(
              children: [
                Container(
                    padding: EdgeInsets.all(height * 0.02),
                    height: height * 0.6,
                    width: width * .6,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(height * 0.5),
                            topRight: Radius.circular(height * 0.5))),
                    child: Row(
                      children: [
                        Container(
                          height: height * 0.5,
                          width: width * 0.5,
                          // color: Colors.cyan,
                          child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 20,
                                childAspectRatio: 4 / 3.3,
                              ),
                              itemCount: items.length,
                              itemBuilder: (context, index) {
                                return InkWell(onTap: (){
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => items[index]['page'],
                                      ));
                                },
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Color(0xFF062344),
                                        borderRadius: BorderRadius.circular(
                                            height * 0.025)),
                                    child: Align(alignment: Alignment.center,
                                      child: Text(items[index]['title'],style: TextStyle(fontSize: height*0.03,color: Colors.white,
                                        fontWeight: FontWeight.bold,

                                  ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ],
                    )),
                Container(
                    height: height * 0.4,
                    width: width * 0.4,
                    child: Image.asset("assets/adm.png"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
