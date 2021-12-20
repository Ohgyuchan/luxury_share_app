import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          floating: false,
          title: Text('MUSINSA'),
          expandedHeight: 225,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(0),
            child: AppBar(
              title: Text('dd'),
            ),
          ),
        ),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.purple[100 * (index % 10)],
                child: Text(
                  'List Item $index',
                  style: const TextStyle(fontSize: 20),
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}