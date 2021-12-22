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
        const SliverAppBar(
          pinned: true,
          floating: true,
          title: Text('MUSINSA'),
        ),
        // Container(),
        SliverFixedExtentList(
          itemExtent: 50.0,
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                color: Colors.purple[100 * (index % 10)],
                child: Text(
                  'List Item ${index + 1}',
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
