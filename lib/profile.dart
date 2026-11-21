import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Profile',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Color(0xFFD7A86E),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'data:image/jpeg;base64,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'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'The Bakery Shop',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Welcome!',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About Us'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/about');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/profile');
              },
            ),
            const Divider(),
            
             ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
             onTap: () {
               Navigator.pop(context); // Close the drawer
               ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('No User Found'),
                  duration: Duration(seconds: 2),
                 ),
             );
          },
              ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              // PROFILE CARD
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 60,
                        backgroundColor: const Color(0xFF8D6E63),
                        backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1533738363-b7f9aef128ce?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZnVubnklMjBjYXR8ZW58MHx8MHx8fDA%3D',
                      ),
                      ),
                      const SizedBox(height: 10,),
                      const Text(
                        'Talha',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        'Talha.tech@gmail.com',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 5),
                      const Text(
                        '+92 300 1234567',
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(Icons.edit),
                            label: const Text('Edit Profile'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFD7A86E),
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                          const SizedBox(width: 15),

                          ElevatedButton.icon(
                          onPressed: () {
                         ScaffoldMessenger.of(context).showSnackBar(
                           const SnackBar(
                            content: Text('No User Found'),
                           duration: Duration(seconds: 2),
                            ),
                           );
                          },
                          icon: const Icon(Icons.logout),
                          label: const Text('Logout'),
                          style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                     ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // STATS SECTION
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      _buildStatItem('Orders', '24'),
                      _buildStatItem('Favorites', '12'),
                      _buildStatItem('Points', '350'),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // SOCIAL MEDIA
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        'Connect with me',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.facebook),
                            color: Colors.blue,
                            iconSize: 30,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.email),
                            color: Colors.redAccent,
                            iconSize: 30,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.phone),
                            color: Colors.green,
                            iconSize: 30,
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: const Icon(Icons.link),
                            color: Colors.grey,
                            iconSize: 30,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // ABOUT ME
              Card(
                elevation: 6,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'About Me',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Hi! I am Talha, a Flutter developer who loves baking and coding. '
                        'I enjoy creating amazing apps and exploring new UI designs.',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Helper function for stats
  Widget _buildStatItem(String title, String count) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        Text(
          title,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
