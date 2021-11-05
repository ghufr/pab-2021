import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:test1/tugas6/drawer.dart';
import 'package:test1/tugas6/pages/first.dart';
import 'package:test1/tugas6/pages/second.dart';

class HomePageTugas6 extends StatefulWidget {
  const HomePageTugas6({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _HomePageTugas6State();
  }
}

class _HomePageTugas6State extends State<HomePageTugas6> {
  final PageController _myPage = PageController(initialPage: 0);
  int currentPage = 0;

  _changePage(int index) {
    setState(() {
      _myPage.jumpToPage(index);
      currentPage = index;
    });
  }

  _isPageActive(int index) {
    return index == currentPage;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavDrawer(),
      appBar: AppBar(
        title: Image.asset('assets/images/logo.png'),
      ),
      body: PageView(
        controller: _myPage,
        children: const [
          FirstPage(),
          SecondPage(),
        ],
        physics: const NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        color: Colors.white,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: _isPageActive(0) ? Colors.blue : Colors.black54,
                ),
                onPressed: () {
                  _changePage(0);
                }),
            IconButton(
                icon: Icon(
                  Icons.file_present_outlined,
                  color: _isPageActive(1) ? Colors.blue : Colors.black54,
                ),
                onPressed: () {
                  _changePage(1);
                }),
            const SizedBox(
              width: 24,
            ),
            IconButton(
                icon: const Icon(Icons.notifications_outlined),
                onPressed: () {}),
            IconButton(
                icon: const Icon(Icons.person_outline), onPressed: () {}),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.search_outlined), onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
