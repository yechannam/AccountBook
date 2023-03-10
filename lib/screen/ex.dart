import 'package:flutter/material.dart';

class LoginEX extends StatefulWidget {
  const LoginEX({super.key});

  @override
  State<LoginEX> createState() => _LoginEXState();
}

class _LoginEXState extends State<LoginEX> {
  String? id;
  String? pw;
  String? newid;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login EX'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text(
                  'ID : $id',
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 30,
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: TextField(
                    controller: TextEditingController(),
                    style: const TextStyle(fontSize: 30),
                    onChanged: (String str) {
                      newid = str;
                    }),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
            onPressed: () {
              id = newid;
              setState(() {});
            },
            child: const Text('확인'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Next()));
            },
            child: const Text('다음'),
          )
        ],
      ),
    );
  }
}

class Next extends StatelessWidget {
  const Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ElevatedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('헉'),
      ),
    );
  }
}

class TabEx extends StatelessWidget {
  TabEx({super.key});
  final list = ['1', '2', '3', '4', '5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TabBarView(
            children: list.map((String list) {
              return Center(child: Text(list));
            }).toList(),
          ),
          Expanded(child: Container()),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: DefaultTabController(
              length: list.length,
              child: Column(
                children: [
                  TabBar(
                    indicatorColor: Colors.blue,
                    unselectedLabelColor: Colors.amber,
                    dividerColor: Colors.black,
                    labelColor: Colors.deepPurpleAccent,
                    tabs: list.map((var list) {
                      return Tab(
                        text: list,
                        icon: const Icon(Icons.add_circle),
                      );
                    }).toList(),
                    isScrollable: true,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
