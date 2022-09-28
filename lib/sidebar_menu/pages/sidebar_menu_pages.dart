import 'package:flutter/material.dart';

const List<String> title = ['1', '2', '3', '4', '5'];

class SideBarMenuPage extends StatelessWidget {
  const SideBarMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example of SideBar'),
        centerTitle: true,
      ),
      body: const Center(child: Text('Welcome')),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.blueGrey), child: Text('Hello everyone')),
            ListTile(
              title: const Text('Item 0'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
