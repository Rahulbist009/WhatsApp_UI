import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('WhatsApp'),
          backgroundColor: Colors.teal,
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Icon(Icons.camera_alt),
              ),
              Tab(
                child: Text('Chats'),
              ),
              Tab(
                child: Text('Status'),
              ),
              Tab(
                child: Text('Calls'),
              )
            ],
          ),
          actions: [
            const Icon(Icons.search_rounded),
            const SizedBox(
              width: 10,
            ),
            PopupMenuButton(
                icon: const Icon(Icons.more_vert_outlined),
                itemBuilder: (
                  context,
                ) =>
                    [
                      const PopupMenuItem(value: 1, child: Text('New Group')),
                      const PopupMenuItem(
                          value: 2, child: Text('linked Devices')),
                      const PopupMenuItem(
                          value: 3, child: Text('Started Massage')),
                      const PopupMenuItem(value: 4, child: Text('Setting')),
                      const PopupMenuItem(value: 5, child: Text('Logout'))
                    ]),
            const SizedBox(
              width: 10,
            ),
          ],
        ),
        body:  TabBarView(
          children: [
            Text('Camera'),
            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
                return const  ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.wallpapersafari.com/38/11/2WqNdH.jpg'),
                  ),
                  title: Text('Rahul'),
                  subtitle: Text('Kaisa hai'),
                  trailing: Text('10:34Pm'),

                );
              },
            ),

            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
                return   ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                       color: Colors.green,
                        width: 3,
                      )
                    ),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage('https://cdn.wallpapersafari.com/38/11/2WqNdH.jpg'),
                    ),
                  ),
                  title: Text('Rahul'),

                  trailing: Text('10 min ago'),

                );
              },
            ),

            ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index){
                return   ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://cdn.wallpapersafari.com/38/11/2WqNdH.jpg'),
                  ),
                  title: Text('Rahul'),
                  subtitle: Text(index /2 ==0? 'Call Accept' : 'Missed Calls'),
                  trailing: Icon(index.isEven
                      ? Icons.phone_callback: Icons.phone_missed),
                );
              }
            ),
          ],
        ),
      ),
    );
  }
}
