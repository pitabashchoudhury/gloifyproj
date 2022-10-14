import 'package:flutter/material.dart';
import 'package:gloify_new_porject/CardWidget.dart';

void main() {
  runApp(const MyApp());
}

final myKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _navKey = myKey;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      )),
      home: const Youtube(),
      onGenerateRoute: (settings) {
        var arg = settings.arguments;
        switch (settings.name) {
          case "/":
        }
      },
      navigatorKey: _navKey,
    );
  }
}

class Youtube extends StatefulWidget {
  const Youtube({super.key});

  @override
  State<Youtube> createState() => _YoutubeState();
}

class _YoutubeState extends State<Youtube> {
  @override
  Widget build(BuildContext context) {
    double widthD = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 100,
              height: 50,
              child: Image.network(
                'https://cdn.mos.cms.futurecdn.net/8gzcr6RpGStvZFA2qRt4v6.jpg',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
        elevation: 0,
        actions: const <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.notification_add_outlined,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Icon(
              Icons.search,
              size: 25,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              child: Icon(
                Icons.people,
                size: 25,
              ),
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Container(
            padding: const EdgeInsets.only(top: 0.0),
            height: double.infinity,
            width: widthD,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    textDirection: TextDirection.ltr,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {
                          showSnackbar(context, "All");
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.black45,
                            elevation: 0),
                        child: const Text(
                          'All',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Music");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Music',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Flutter");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Flutter',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Cricket");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Cricket',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Movies");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Movies',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Comedy");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Comedy',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      OutlinedButton(
                        onPressed: () {
                          showSnackbar(context, "Hindi Song");
                        },
                        style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white10,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40))),
                        child: const Text(
                          'Hindi Song',
                          style: TextStyle(color: Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Column(
                      // spacing: 50,
                      // runSpacing: 50,
                      // direction: Axis.vertical,
                      children: [
                        MyCard(
                          image: 'https://picsum.photos/536/354',
                          des:
                              "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actua",
                          publisher: 'Kanak News',
                          time: '1 year',
                          views: '750',
                          logo:
                              'https://media.istockphoto.com/photos/handsome-man-laughing-picture-id1090837964?b=1&k=20&m=1090837964&s=170667a&w=0&h=ix4OOCh5MffRHKBwADgsksgQ6MFcRLglljGeQ6NqFBQ=',
                        ),
                        MyCard(
                          image:
                              'https://res.cloudinary.com/demo/image/upload/sample.gif',
                          des:
                              "Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur",
                          publisher: 'MYcode',
                          time: '4',
                          views: '750',
                          logo:
                              'https://images.unsplash.com/photo-1519764622345-23439dd774f7?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c2ltcGxlJTIwbWFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/359',
                          des:
                              "At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio.",
                          publisher: 'oTVChannel',
                          time: '4',
                          views: '750',
                          logo:
                              'https://media.gettyimages.com/photos/interior-design-project-development-a-woman-architect-going-through-a-picture-id1288707190?k=20&m=1288707190&s=612x612&w=0&h=0Uy-j81RPzdvrCzMSSEiAMg2r87xTcEaeMn6_gCrGXw=',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/400',
                          des:
                              "Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?",
                          publisher: 'Technology Stack',
                          time: '4',
                          views: '750',
                          logo:
                              'https://media.gettyimages.com/photos/interior-designer-working-late-in-her-office-picture-id517087944?k=20&m=517087944&s=612x612&w=0&h=qyJ9Vo8fiQFl7pCkuP8pmB2jDlI_eQqTvX5g6X3MtmM=',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/959',
                          des:
                              "On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free hour, when our power of choice is untrammelled and when nothing prevents our being able to do what we like best, ever",
                          publisher: 'World News',
                          time: '4',
                          views: '750',
                          logo:
                              'https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                        MyCard(
                          image:
                              'https://www.socialsamosa.com/wp-content/uploads/2020/09/12-17-700x366.jpg',
                          des:
                              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                          publisher: 'Trekking',
                          time: '4',
                          views: '750',
                          logo:
                              'https://images.pexels.com/photos/747964/pexels-photo-747964.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/859',
                          des:
                              "it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasur",
                          publisher: 'IndianPolitics',
                          time: '2 years',
                          views: '1M',
                          logo:
                              'https://images.pexels.com/photos/775201/pexels-photo-775201.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/259',
                          des:
                              "d by desire, that they cannot foresee the pain and trouble that are bound to ensue; and equal blame belongs to those who fail in their duty through weakness of will, which is the same as saying through shrinking from toil and pain. These cases are perfectly simple and easy to distinguish. In a free h",
                          publisher: 'CriketTalk',
                          time: '2 months',
                          views: '4B',
                          logo:
                              'https://images.pexels.com/photos/70365/forest-sunbeams-trees-sunlight-70365.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/159',
                          des:
                              "a. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tene",
                          publisher: 'World Explore',
                          time: '1 month',
                          views: ' 5M',
                          logo:
                              'https://images.pexels.com/photos/6348820/pexels-photo-6348820.jpeg?auto=compress&cs=tinysrgb&w=600',
                        ),
                        MyCard(
                          image: 'https://picsum.photos/536/309',
                          des:
                              " when nothing prevents our being able to do what we like best, ever",
                          publisher: 'oTVChannel',
                          time: '5 days',
                          views: '500k',
                          logo:
                              'https://images.pexels.com/photos/169647/pexels-photo-169647.jpeg?auto=compress&cs=tinysrgb&w=600',
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          currentIndex: 0,
          showSelectedLabels: true,
          selectedItemColor: Colors.black,
          iconSize: 25,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.black87,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.sort_sharp,
                  color: Colors.black87,
                ),
                label: "Sorts"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.add_box_outlined,
                  color: Colors.black87,
                ),
                label: "Add"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.subscriptions_rounded,
                  color: Colors.black87,
                ),
                label: "Subscription"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_library,
                  color: Colors.black87,
                ),
                label: "Library")
          ]),
    );
  }
}

showSnackbar(BuildContext context, String data) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
        content: Text(data),
        elevation: 6.0,
        behavior: SnackBarBehavior.floating,
        backgroundColor: Colors.cyan[200],
        duration: const Duration(seconds: 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)))),
  );
}
