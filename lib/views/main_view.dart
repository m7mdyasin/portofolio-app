import 'package:flutter/material.dart';
import 'package:portofolio_app/widgets/bannar_image.dart';
import 'package:portofolio_app/widgets/custoum_app_bar.dart';
import 'package:portofolio_app/widgets/document_viwe.dart';
import 'package:portofolio_app/widgets/grid_view.dart';
import 'package:portofolio_app/widgets/home_back_ground.dart';
import 'package:portofolio_app/widgets/information_card.dart';
import 'package:portofolio_app/widgets/links_list_tile.dart';
import 'package:portofolio_app/widgets/video_view.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: CustoumAppBar(),
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
              CustoumGridView(),
              VideoView(),
              // CustoumGridView(),
              LinksListTile(),
              DocumentView(),
            ],
          ),
        ),
      ],
    );
  }
}
