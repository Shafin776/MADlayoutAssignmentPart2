import 'package:assignment_part_one/data/data.dart';
import 'package:assignment_part_one/widgets/home_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My Home',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(height: 8),
            Container(
              color: Colors.white,
              child: const TabBar(
                labelColor: Colors.black,
                unselectedLabelColor: Colors.grey,
                indicatorSize: TabBarIndicatorSize.label,
                tabs: [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Livingro..',
                  ),
                  Tab(
                    text: 'Bedroom',
                  ),
                  Tab(
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height - 200,
              child: TabBarView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: devices.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 16 / 12,
                      ),
                      itemBuilder: (context, index) {
                        return HomeTile(device: devices[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 3,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 16 / 12,
                      ),
                      itemBuilder: (context, index) {
                        return HomeTile(device: devices[index]);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: GridView.builder(
                      shrinkWrap: true,
                      itemCount: 2,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 16 / 12,
                      ),
                      itemBuilder: (context, index) {
                        final List<IOT> bedroom = devices.reversed.toList();
                        return HomeTile(device: bedroom[index]);
                      },
                    ),
                  ),
                  const Center(
                    child: Text('More'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
