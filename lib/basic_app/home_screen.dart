import 'package:flutter/material.dart';
import 'package:my_app/View/image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String pic =
        "https://lumiere-a.akamaihd.net/v1/images/p_junglecruise_21740_v2_bb7f0ae4.jpeg";
    String img =
        "https://upload.wikimedia.org/wikipedia/en/thumb/d/de/WishMoviePoster.jpg/220px-WishMoviePoster.jpg";
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // leading: Icon(Icons.home),
        title: const Text("Home Screen"),
        backgroundColor: Color.fromARGB(255, 255, 0, 119),
      ),
      drawer: Drawer(
        backgroundColor: const Color.fromARGB(255, 9, 81, 133),
        child: ListView(
          children: [
            DrawerHeader(
              child: Image.network(
                  "https://www.acledasecurities.com.kh/as/assets/layout/logo1.png"),
            ),
            const ListTile(
              // IconButton(onPressed: () {}, icon: const Icon(Icons.home)),

              leading: Icon(Icons.home),
              title: Text("Home"),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.call),
              title: Text("Contact"),
              trailing: Icon(Icons.navigate_next),
            ),
            const ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              trailing: Icon(Icons.navigate_next),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: Image.network(
          img,
          fit: BoxFit.cover,
        ),
      ),
      body: ListView(
        children: [
          Image.network(pic),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Image_display(),
                  // builder: (context) => const Book_card(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.8),
              child: Container(
                height: 300,
                width: 150,

                // child: Image.asset("assets/image/Ghostbusters.jpg"),

                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.red,
                    width: 2.0,
                  ),
                  image: const DecorationImage(
                    image: AssetImage("assets/image/Ghostbusters.jpg"),
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
