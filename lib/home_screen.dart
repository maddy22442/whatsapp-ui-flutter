import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Whatsapp'),
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
              ),
            ],
          ),
          actions: [
            const Icon(Icons.search),
            const SizedBox(width: 10),
            PopupMenuButton(
              icon: const Icon(Icons.more_horiz_outlined),
              itemBuilder: (context) => [
                const PopupMenuItem(
                  value: 1,
                  child: Text('New Group'),
                ),
                const PopupMenuItem(
                  value: 2,
                  child: Text('Privacy'),
                ),
                const PopupMenuItem(
                  value: 3,
                  child: Text('Linked Devices'),
                ),
                const PopupMenuItem(
                  value: 4,
                  child: Text('Logout'),
                ),
              ],
            ),
            const SizedBox(width: 10),
          ],
        ),
        body: TabBarView(children: [
          const Text('Camera'),
          // Chats Tab
          ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return const ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                ),
                title: Text('Maddy'),
                subtitle: Text('FLutter Developer '),
                trailing: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text('8:40'),
                    Text('4/09/2023'),
                  ],
                ),
              );
            },
          ),
          ListView.builder(
              itemCount: 15,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.teal,
                      child: Icon(Icons.add_circle_outline),
                    ),
                    title: const Text('My Status'),
                    subtitle: const Text('tap to add status update'),
                    shape: Border(
                      bottom: BorderSide(
                        color: Colors.grey.shade300,
                      ),
                    ),
                  );
                } else if (index == 1) {
                  return const ListTile(
                    title: Text(
                      'Recent updates',
                      style: TextStyle(color: Colors.teal),
                    ),
                  );
                } else {
                  return ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.green,
                            width: 3,
                          )),
                      child: const CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1635107510862-53886e926b74?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjB8fHByb2ZpbGUlMjBwaWN0dXJlfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60'),
                      ),
                    ),
                    title: const Text('Maddy'),
                    subtitle: const Text('Today, 3:30 PM'),
                  );
                }
              }),
          ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading: const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/14557287/pexels-photo-14557287.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
                ),
                title: const Text('Aryan'),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.call_received_outlined,
                      color: Colors.green,
                      size: 15,
                    ),
                    Text('39 minutes ago')
                  ],
                ),
                trailing: index % 2 == 0
                    ? const Icon(
                        Icons.phone,
                        color: Colors.teal,
                      )
                    : const Icon(
                        Icons.video_call,
                        color: Colors.teal,
                      ),
              );
            },
          ),
        ]),
      ),
    );
  }
}
