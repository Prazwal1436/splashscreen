import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.redAccent,
      ),
      body: const Column(
        children: [Text("Prazwal")],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration:
                  BoxDecoration(color: const Color.fromARGB(255, 187, 12, 0)),
              accountName: const Text("Prajjwal Parajuli"),
              accountEmail: const Text("prazwal.parajuli2000@gmail.com"),
              currentAccountPicture: Image.asset("assets/logo.png"),
            ),
            ListTile(
                title: Text("Dashboard"),
                subtitle: Text("Dashboard Direct"),
                leading: Icon(Icons.dashboard),
                onTap: () {
                  print("Dashboard");
                }),
            ListTile(
                title: Text("Blood Bank"),
                subtitle: Text("Bank of Blood"),
                leading: Icon(Icons.water_drop),
                onTap: () {
                  print("Blood Bank");
                })
          ],
        ),
      ),
    );
  }
}
