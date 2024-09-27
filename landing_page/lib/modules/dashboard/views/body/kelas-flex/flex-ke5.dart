import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class FLex5 extends StatefulWidget {
  const FLex5({super.key});

  @override
  State<FLex5> createState() => _FLex4State();
}

class _FLex4State extends State<FLex5> {
  
  List<Map<double, String>> valueBar = [
    {490000: 'Australian Office'},
    {178000: 'Canadian development Center'},
    {558640: 'France Office'},
    {643000: 'German Office'},
    {24850000: 'India Office'},
    {0: 'Jamaica training Center'},
    {0: 'Mexico Office'},
    {530000: 'Philiphinnes Call Center'},
    {557625: 'Singapore Regional HQ'},
    {3351000: 'South Africa Satelit Office'},
    {1891205: 'Uk Office'},
    {3619315: 'Us Office'},
  ];

  ///Deklarasi ScrollController
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ///kolum1-baris4
          Flexible(
            flex: 2,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.46,
              height: MediaQuery.of(context).size.height * 0.5,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  /// title icon-txt-icon
                  Container(
                    padding: EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.badge_outlined,
                              size: 20,
                              color: Colors.black.withOpacity(0.5),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Annual Basic Payment by Location',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.black.withOpacity(0.6),
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.settings,
                          size: 20,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  /// border-line bottom
                  Container(
                    margin: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      border: Border(
                          bottom:
                              BorderSide(color: Colors.black.withOpacity(0.1))),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  Expanded(
                    child: Column(
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.02,
                                padding: EdgeInsets.only(left: 5),
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text('Sum  of Annual Basci Payment',
                                  style: TextStyle(
                                    fontSize: 12,
                                  ),
                                  ),
                                  ),
                              ),
                              Expanded(
                                child: Scrollbar(
                                  controller:
                                      _scrollController, // Menghubungkan ScrollController
                                  child: SingleChildScrollView(
                                    controller:
                                        _scrollController, // Menghubungkan ScrollController
                                    scrollDirection: Axis.horizontal,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Container(
                                        width: 1000,
                                        // margin: EdgeInsets.only(top: 35),
                                        child: BarChart(
                                          BarChartData(
                                            borderData: FlBorderData(
                                                show: true,
                                                border: Border(
                                                  bottom: BorderSide(
                                                    color: Colors.black.withOpacity(0.5),
                                                  ),
                                                  left: BorderSide(
                                                    color: Colors.black.withOpacity(0.5),
                                                  ),
                                                  top: BorderSide.none,
                                                  right: BorderSide.none,
                                                )),
                                            titlesData: FlTitlesData(
                                                show: true,
                                                bottomTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: true,
                                                    getTitlesWidget:
                                                        (double value, TitleMeta meta) {
                                                      int index = value.toInt();
                                                      return SideTitleWidget(
                                                        axisSide: meta.axisSide,
                                                        space: 8.0, // spacing from the bar
                                                        child: Container(
                                                          width: MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              0.05,
                                                          child: Text(
                                                            valueBar[index].values.first,
                                                            maxLines: 3,
                                                            textAlign: TextAlign.center,
                                                            style: TextStyle(
                                                              fontSize: 10,
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    reservedSize: 50,
                                                  ),
                                                ),
                                                topTitles: AxisTitles(
                                                    sideTitles:
                                                        SideTitles(showTitles: false)),
                                                leftTitles: AxisTitles(
                                                  sideTitles: SideTitles(
                                                    showTitles: true,
                                                    getTitlesWidget: (value, meta) {
                                                      if (value % 10 == 0) {
                                                        return SideTitleWidget(
                                                            child: Text((value.toInt()).toString(),
                                                            style: TextStyle(
                                                              fontSize: 9,
                                                            ),
                                                            ),
                                                            axisSide: meta.axisSide);
                                                      }
                                                      return Container();
                                                    },
                                                    reservedSize: 60,
                                                  ),
                                                ),
                                                rightTitles: AxisTitles(
                                                    sideTitles:
                                                        SideTitles(showTitles: false))),
                                            gridData: FlGridData(show: false),
                                            barGroups:
                                                _buildBarGroups(), // Menggunakan fungsi untuk grup batang
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Text('Location',
                          style: TextStyle(
                            fontSize: 12,
                          ),
                          ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              width: MediaQuery.of(context).size.width * 0.22,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
        ],
      ),
    );
  }

  List<BarChartGroupData> _buildBarGroups() {
    List<BarChartGroupData> barGroups = [];

    for (int i = 0; i < valueBar.length; i++) {
      barGroups.add(
        BarChartGroupData(
          x: i, // Mengatur nilai X untuk setiap batang
          barRods: [
            BarChartRodData(
              toY: valueBar[i].keys.first, // Menggunakan nilai dari list
              color: Colors.blue,
              width: 30,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ],
        ),
      );
    }
    return barGroups;
  }
}
