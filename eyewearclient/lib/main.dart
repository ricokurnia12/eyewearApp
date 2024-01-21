import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int tabActive = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, top: 40, bottom: 0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Latest collection\nof Eyewear",
                    style: GoogleFonts.poppins(
                        color: Color(0xff80BCBD),
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/notification.png'))),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20, bottom: 20),
              child: Image.asset('assets/banner.png'),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Column(
                children: [
                  Row(
                    children: List.generate(5, (index) {
                      return GestureDetector(
                        onTap: () => setState(() {
                          tabActive = index;
                        }),
                        child: Container(
                          width: 80,
                          padding: EdgeInsets.only(bottom: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("tes"),
                              Visibility(
                                visible: (index == tabActive),
                                child: Divider(
                                  color: Colors.black,
                                  thickness: 1.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
            Text("hallo")
          ],
        ),
      ),
    );
  }
}
