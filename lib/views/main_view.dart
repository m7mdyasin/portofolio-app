import 'package:flutter/material.dart';
import 'package:portofolio_app/widgets/bannar_image.dart';
import 'package:portofolio_app/widgets/home_back_ground.dart';
import 'package:portofolio_app/widgets/information_card.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Stack(
          children: [
            const HomeBackGround(),
            NestedScrollView(
              headerSliverBuilder: (context, innerBoxIsScrolled) => [
                SliverToBoxAdapter(child: BannarImage(size: size)),
                SliverToBoxAdapter(child: InformationCard()),
              ],
              body: CustoumTabBar(),
            ),
          ],
        ),
      ),
    );
  }
}

class CustoumTabBar extends StatelessWidget {
  const CustoumTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.white54,
          indicatorColor: Colors.white,
          tabs: const [
            Tab(text: "Photos", icon: Icon(Icons.photo)),
            Tab(text: "Videos", icon: Icon(Icons.video_label)),
            Tab(text: "Links", icon: Icon(Icons.link)),
            Tab(text: "Documents", icon: Icon(Icons.document_scanner)),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              Center(
                child: Text(
                  "Photos Content",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Videos Content",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Links Content",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Center(
                child: Text(
                  "Documents Content",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
