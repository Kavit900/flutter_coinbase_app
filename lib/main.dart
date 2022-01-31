import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  List<dynamic> _transactions = [
    ['Ethereum', 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/Ethereum-icon-purple.svg/1200px-Ethereum-icon-purple.svg.png', '2.34567 ETH', '\$7000.90'],
    ['Bitcoin', 'https://bitcoin.org/img/icons/opengraph.png?1643058474', '0.00345 BTC', '\$1200.00'],
    ['SHIBA INU', 'https://w0.peakpx.com/wallpaper/933/270/HD-wallpaper-shiba-inu-coin-crypto-cryptocurrency-shibainu.jpg', '555.08 SHIB', '\$715.99'],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20, top: 20,
                ),
                child: Text("Your Balance", style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 12
                )),
              )
            ),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 10
                    ),
                    child: Text("\$", style: TextStyle(
                      color: Colors.black,
                      fontSize: 22
                    )),
                  ),
                ),
                Text("1940.00", style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
                ))
              ],
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: 350,
                    child: LineChart(
                      mainData(),
                    ),
                  ),
                  SizedBox(height: 15,)
                ],
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                    padding: const EdgeInsets.only(
                      left: 20, top: 20,
                    ),
                  child: Text("Your assets", style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                  )
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                        ),
                      child: Text("Balance", style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.only(
                          right: 10, top: 20,
                        ),
                      child: Icon(Icons.keyboard_arrow_down, color: Colors.black, size: 20),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(height: 20),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(_transactions[0][1], width: 50, height: 50,),
                          SizedBox(width: 15,),
                          Text(_transactions[0][0], style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 14
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_transactions[0][3], style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                              SizedBox(height: 5,),
                              Text(_transactions[0][2], style: TextStyle(
                                color: Colors.black,
                                fontSize: 12
                              ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(_transactions[1][1], width: 50, height: 50,),
                          SizedBox(width: 15,),
                          Text(_transactions[1][0], style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_transactions[1][3], style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                              SizedBox(height: 5,),
                              Text(_transactions[1][2], style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12
                              ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),
            Expanded(
                child: Container(
                  margin: EdgeInsets.only(bottom: 5),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Image.network(_transactions[2][1], width: 50, height: 50,),
                          SizedBox(width: 15,),
                          Text(_transactions[2][0], style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                              fontSize: 14
                          ))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(_transactions[2][3], style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              )),
                              SizedBox(height: 5,),
                              Text(_transactions[2][2], style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12
                              ))
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                )
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.home_outlined, color: Colors.blue, size: 30)
              ),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.access_time_outlined, color: Colors.blue, size: 30)
              ),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.swap_horizontal_circle_sharp, color: Colors.blue, size: 30)
              ),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.view_week_outlined, color: Colors.blue, size: 30)
              ),
              IconButton(
                  onPressed: () => {},
                  icon: Icon(Icons.perm_identity, color: Colors.blue, size: 30)
              )
            ],
          )
        )
      ),
    );
  }

  // Charts Data color
  List<Color> gradientColors = [
    const Color(0xFF1565C0),
  ];

  LineChartData mainData() {
    return LineChartData(
      borderData: FlBorderData(
        show: false,
      ),
      gridData: FlGridData(
        show: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        rightTitles: SideTitles(showTitles: false),
        topTitles: SideTitles(showTitles: false),
        bottomTitles: SideTitles(
          showTitles: true,
          reservedSize: 22,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Color(0xff68737d),
            fontWeight: FontWeight.bold,
            fontSize: 12
          ),
          getTitles: (value) {
            switch(value.toInt()) {
              case 1:
                return '1M';
              case 4:
                return '3M';
              case 7:
                return '1Y';
              case 10:
                return '5Y';
            }
            return '';
          },
          margin: 10,
        ),
        leftTitles: SideTitles(
          showTitles: false,
          interval: 1,
          getTextStyles: (context, value) => const TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),

          getTitles: (value) {
            switch(value.toInt()) {
              case 1:
                return '10k';
              case 3:
                return '30k';
              case 5:
                return '50k';
            }
            return '';
          },
          reservedSize: 25,
          margin: 12,
        )
      ),
      minX: 0,
      maxX: 11,
      minY: 0,
      maxY: 7,

      lineBarsData: [
        LineChartBarData(
          spots: const [
            FlSpot(0, 3),
            FlSpot(0.8, 2),
            FlSpot(1.5, 0.6),
            FlSpot(2.6, 2),
            FlSpot(3.1, 4),
            FlSpot(3.6, 2.7),
            FlSpot(4.9, 5),
            FlSpot(5.4, 3.6),
            FlSpot(5.7, 3.6),
            FlSpot(5.9, 3.6),
            FlSpot(6.3, 2.2),
            FlSpot(6.8, 1.1),
            FlSpot(8, 1.6),
            FlSpot(9.5, 3),
            FlSpot(11, 1.9),
            FlSpot(12, 4),
          ],
          isCurved: false,
          colors: gradientColors,
          barWidth: 3,
          isStrokeCapRound: false,
          dotData: FlDotData(
            show: false,
          ),
        ),
      ]
    );
  }
}
