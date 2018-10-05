import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        /*title: new FlutterLogo(
          colors: Colors.red,
          size: 25.0,
        ),*/

        title: Image.network(
            'https://cdn3.iconfinder.com/data/icons/facebook-ui-flat/48/Facebook_UI-07-512.png'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.red), onPressed: () {}),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.menu, color: Colors.redAccent), onPressed: null)
        ],

        //  Icon(Icons.keyboard_arrow_left,color: Colors.redAccent),
      ),
      body: new ListView(
        shrinkWrap: true,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                alignment: Alignment(0.0, -0.40),
                color: Colors.white,
                height: 100.0,
                child: new Text('Get Shopping',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
              ),

              // Stack Start
              Container(
                margin: EdgeInsets.fromLTRB(25.0, 80.0, 25.0, 0.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2.0,
                        color: Color(0xFFFBE9E7),
                      ),
                    ]),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        // Start Left Side text

                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 25.0, 5.0, 5.0),
                          child: Text(
                            'You Have Save',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Montserrat',
                                fontSize: 14.0),
                          ),
                        ),

                        Container(
                          padding: EdgeInsets.fromLTRB(25.0, 40.0, 5.0, 25.0),
                          child: Text(
                            '250',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Montserrat',
                                fontSize: 32.0),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 70.0),
                    Container(
                      height: 50.0,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF8A80),
                          borderRadius: BorderRadius.circular(20.0)),
                      child: Center(
                        child: new Text(
                          'BUY NOW',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),

          // Main Stack text close

          SizedBox(height: 40.0),
          Container(
            padding: EdgeInsets.only(right: 25.0, left: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Title 1

                Text(
                  'Product Name',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),

                // Title 1 End

                Text(
                  'View All',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600),
                ),


              ],
            ),
          ),


          // Gridview Used And Create Product Use

          SizedBox(height: 15.0),
          
          GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 4.0, // Used By Bottom Spacing
            crossAxisSpacing: 2.0, // Used By Right Spacing
            shrinkWrap: true,

            // Card

            children: <Widget>[
                _buildCard('Tom', 'Available', 1),
                _buildCard('Tom', 'Away', 2),
                _buildCard('Tom', 'Away', 3),
                _buildCard('Tom', 'Available', 4),
                _buildCard('Tom', 'Away', 5),
                _buildCard('Tom', 'Available', 6),
            ],
          )


        ],
      ),
    );
  }

  // Custom Widget

  Widget _buildCard(String name, String status, int cardIndex) {
    return Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
        ),
        elevation: 7.0,
        child: Column(
          children: <Widget>[
            SizedBox(height: 12.0),
            Stack(
                children: <Widget>[
                  Container(
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: Colors.green,
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://pixel.nymag.com/imgs/daily/vulture/2017/06/14/14-tom-cruise.w700.h700.jpg'
                            )
                        )
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30.0),
                        color: status == 'Away' ? Colors.amber : Colors.green,
                        border: Border.all(
                            color: Colors.white,
                            style: BorderStyle.solid,
                            width: 2.0
                        )
                    ),
                  )
                ]),
            SizedBox(height: 8.0),
            Text(
              name,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.bold,
                fontSize: 15.0,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              status,
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                  color: Colors.grey
              ),
            ),
            SizedBox(height: 15.0),
            Expanded(
                child: Container(
                    width: 175.0,
                    decoration: BoxDecoration(
                      color: status == 'Away' ? Colors.grey: Colors.green,
                      borderRadius: BorderRadius.only
                        (
                          bottomLeft: Radius.circular(10.0),
                          bottomRight: Radius.circular(10.0)
                      ),
                    ),
                    child: Center(
                      child: Text('Request',
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'Quicksand'
                        ),
                      ),
                    )
                )
            )
          ],
        ),
        margin: cardIndex.isEven? EdgeInsets.fromLTRB(10.0, 0.0, 25.0, 10.0):EdgeInsets.fromLTRB(25.0, 0.0, 5.0, 10.0)
    );
  }
}
