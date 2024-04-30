import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/change_theme_provider.dart';

class Themeprovider extends StatelessWidget {
  const Themeprovider({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(Icons.add_circle_outline_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 130),
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/img.jpg'),
              radius: 70,
            ),
          ),
          const Text(
            "Testing User",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
           SizedBox(
            height: 40,
          ),
          ListTile(
              leading:Provider.of<ChangeProvider>(context).isDarkMode
                    ?  Icon(
                        Icons.brightness_2,
                        size: 30,
                        color: Colors.yellow,
                      )
                    :  Icon(
                        Icons.light_mode,
                        color: Colors.purple,
                      ),


              title: const Text(
                "Light Mode",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              trailing: Switch(
                activeColor: Provider.of<ChangeProvider>(context).isDarkMode
                    ? Colors.yellow
                    : Colors.purple,
                value: Provider.of<ChangeProvider>(context, listen: true)
                    .isDarkMode,
                onChanged: (value) {
                  Provider.of<ChangeProvider>(context, listen: false)
                      .theme(value);
                },
              )),
          ListTile(
            leading: Icon(Icons.apps_sharp,
                size: 30,
                color: Provider.of<ChangeProvider>(context).isDarkMode
                    ? Colors.blue
                    : Colors.green),
            title: const Text(
              "Story",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.settings,
                size: 30,
                color: Provider.of<ChangeProvider>(context).isDarkMode
                    ? Colors.pink
                    : Colors.blue),
            title: const Text(
              "Setting and Privacy",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.live_help_outlined,
                size: 30,
                color: Provider.of<ChangeProvider>(context).isDarkMode
                    ? Colors.yellow
                    : Colors.deepOrange),
            title: const Text(
              "Help Center",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications_on_rounded,
                size: 30,
                color: Provider.of<ChangeProvider>(context).isDarkMode
                    ? Colors.yellowAccent
                    : Colors.purple),
            title: const Text(
              "Notification",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
