import 'package:flutter/material.dart';
import '../../widgets/app_bar.dart';
import '../../widgets/bottom_nav.dart';
import '../bottom_nav_page/delete_data.dart';
import '../bottom_nav_page/get_all_data.dart';
import '../bottom_nav_page/update_data.dart';
import '../bottom_nav_page/upload_data.dart';


class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  var current_index = 0;

  final pages = [ExampleOne(), Upload_Data(), Update_Data(), Delete_Data()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Custom_App_Bar("API EXAMPLE"),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black12,
        currentIndex: current_index,
          onTap: (value){
          setState(() {
            current_index = value;
          });
          },
          items: [
            Custom_Bottom_Nav(Icons.get_app),
            Custom_Bottom_Nav(Icons.expand),
            Custom_Bottom_Nav(Icons.drive_file_rename_outline),
            Custom_Bottom_Nav(Icons.delete),
          ]
      ),
      body: SafeArea(
        child: pages[current_index],
      ),
    );
  }
}
