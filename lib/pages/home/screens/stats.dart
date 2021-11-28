import 'package:ad_synergy/utils/const.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:charts_flutter/flutter.dart' as charts;

class ChartListView extends StatefulWidget {
  @override
  _ChartListViewState createState() => _ChartListViewState();
  final List<ListItem> items;
  ChartListView({Key key, @required this.items}) : super(key: key);
}

class _ChartListViewState extends State<ChartListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          title: Text(Constants.stats),
        ),
        body: ListView.separated(
          itemCount: widget.items.length,
          separatorBuilder: (BuildContext context, int index) => Divider(
            thickness: 2.0,
          ),
          itemBuilder: (context, index) {
            final item = widget.items[index];
            return ListTile(
              //title: Text('Impression Chart'),
              subtitle: item.buildChartTitle(context),
            );
          },
        ));
  }
}

abstract class ListItem {
  Widget buildChartTitle(BuildContext context);
}

class HeadingItem implements ListItem {
  @override
  Widget buildChartTitle(BuildContext context) {
    return Container(
      height: 800.0,
      decoration: BoxDecoration(
          color: Colors.transparent
      ),

      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text("Publication Statistic: ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  Text(" All ? ", style: TextStyle(fontSize: 14)),
                ],
              ),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Impression / Clicks Table ?',
                  style: TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),


            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(

                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: '30 days	7 days	2021-10-03 	2021-10-04 	2021-10-05 	2021-10-06 	2021-10-07 	2021-10-08 	2021-10-09 ',
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius:
                      BorderRadius.circular(5.0),
                    ),
                  ),
                  maxLines: 1,
                  //controller: _emailControl,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Impression Chart',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),

          Expanded(
            child: _displayChart(_createSampleData(), true),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Clicks Chart',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Expanded(
            child: _displayChart2(_createSampleData2(), true),
          ),
//          Padding(
//            padding:
//            const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//            child: FlatButton(
//                padding: EdgeInsets.all(20),
//                shape: RoundedRectangleBorder(
//                    borderRadius: BorderRadius.circular(15)),
//                color: Color(0xffc8e6c9),
//                onPressed: () {
//                  openPopup(context);
//                },
//                child: Row(
//                  children: [
//                    Expanded(
//                        child: Text(
//                          "Feedback",
//                          style: Theme.of(context).textTheme.bodyText1,
//                        )),
//                  ],
//                )),
//          ),

        ],
      ),
    );
  }

  static List<charts.Series<Assessment, String>> _createSampleData() {
    final assessmentData = [
      new Assessment("3-10-2021", 3),
      new Assessment("4-10-2021", 5),
      new Assessment("5-10-2021", 7),
      new Assessment("6-10-2021", 8),
      new Assessment("7-10-2021", 9),
      new Assessment("8-10-2021", 05),
    ];
    return [
      new charts.Series(
        id: 'Statistic',
        data: assessmentData,
        domainFn: (Assessment assessment, _) => assessment.name,
        measureFn: (Assessment assessment, _) => assessment.marks,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      )
    ];
  }

  static List<charts.Series<Assessment, String>> _createSampleData2() {
    final assessmentData = [
      new Assessment("3-10-2021", 2),
      new Assessment("4-10-2021", 3),
      new Assessment("5-10-2021", 4),
      new Assessment("6-10-2021", 7),
      new Assessment("7-10-2021", 3),
      new Assessment("8-10-2021", 5),
    ];
    return [
      new charts.Series(
        id: 'Statistic',
        data: assessmentData,
        domainFn: (Assessment assessment, _) => assessment.name,
        measureFn: (Assessment assessment, _) => assessment.marks,
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
      )
    ];
  }

  charts.BarChart _displayChart(List<charts.Series> seriesList, bool animate) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: true,
      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 10,
              color: charts.MaterialPalette.black,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 11,
              color: charts.MaterialPalette.black,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
    );
  }

  charts.BarChart _displayChart2(List<charts.Series> seriesList, bool animate) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      vertical: true,
      primaryMeasureAxis: new charts.NumericAxisSpec(
        showAxisLine: true,
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 10,
              color: charts.MaterialPalette.black,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
      domainAxis: new charts.OrdinalAxisSpec(
        renderSpec: charts.GridlineRendererSpec(
            labelStyle: new charts.TextStyleSpec(
              fontSize: 11,
              color: charts.MaterialPalette.black,
            ),
            lineStyle: charts.LineStyleSpec(
              color: charts.MaterialPalette.gray.shadeDefault,
            )),
      ),
    );
  }
}
