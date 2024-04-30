import 'package:advflutterch1/%20Change%20Theme%20using%20%20provider/provider/change_theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 5,
                ),
                Icon(Icons.arrow_back_ios_new),
                Spacer(),
                Icon(
                  Icons.add_circle_outline_rounded,
                  size: 28,
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              backgroundColor: Colors.black12,
              radius: 100,
              backgroundImage: AssetImage('assets/img.jpg'),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Testing user",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Provider.of<ChangeProvider>(context, listen: true).isDarkMode
                      ? Icon(
                          Icons.dark_mode,
                          color: Colors.yellow,
                          size: 30,
                        )
                      : Icon(
                          Icons.light_mode,
                          color: Colors.purple,
                          size: 30,
                        ),
                  SizedBox(
                    width: Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? 25
                        : 35,
                  ),
                  Text(
                    Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? "Light Mode"
                        : "Dark Mode",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Spacer(),
                  Switch(
                    value: Provider.of<ChangeProvider>(context, listen: true)
                        .isDarkMode,
                    inactiveTrackColor: Colors.purple,
                    activeColor: Colors.yellow,
                    onChanged: (value) {
                      Provider.of<ChangeProvider>(context, listen: false)
                          .theme(value);
                    },
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.grid_on_sharp,
                    size: 30,
                    color: Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? Colors.blue
                        : Colors.green,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Story",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.settings,
                    size: 30,
                    color: Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? Colors.pink
                        : Colors.blue,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Settings and Privacy",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.message_outlined,
                    size: 30,
                    color: Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? Colors.yellow.shade300
                        : Colors.deepOrange.shade200,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Help Center",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                children: [
                  Icon(
                    Icons.notifications,
                    size: 30,
                    color: Provider.of<ChangeProvider>(context, listen: true)
                            .isDarkMode
                        ? Colors.amber
                        : Colors.purple,
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    "Notification",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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


