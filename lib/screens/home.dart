import 'package:flutter/material.dart';
import 'package:flutter_todo/screens/add_todo.dart';
import 'package:flutter_todo/screens/completed_todo.dart';
import 'package:flutter_todo/screens/login.dart';

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
        title: const Text('Todo For Team'),
        elevation: 2.5,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context)
                  .showSnackBar(const SnackBar(content: Text('No Show',textAlign: TextAlign.center,style: TextStyle(color: Colors.black),),backgroundColor: Colors.red,));
            },
          ),
          
          PopupMenuButton(
            icon: const Icon(Icons.account_circle),
        onSelected: (String result) {
          switch (result) {
            case 'Profile':
              break;
            case 'Completed':
              Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const CompletedTodo()));
            case 'Logout':
              Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => const LoginPage()),
                          (Route<dynamic> route) => false,
                        );
            
            default:
          }
        },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
          const PopupMenuItem<String>(
            value: 'Profile',
            child: Text('Profile'),
          ),
          const PopupMenuItem<String>(
            value: 'Completed',
            child: Text('Completed'),
          ),
          const PopupMenuItem<String>(
            value: 'Logout',
            child: Text('Logout'),
          ),
        ],)
        
        
        ],
      ),
      body: const Center(
        child: Text(
          'This is the home page',
          style: TextStyle(fontSize: 24),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => const AddTodo()));
        },
        label: const Text(
          'Add Todo',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.tealAccent,
      ),
    );
  }
}
