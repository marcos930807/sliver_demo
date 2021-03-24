import 'package:flutter/material.dart';
import 'package:sliver_demo/models/json.dart';
import 'package:sliver_demo/widgets/section_detail.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'models/menu/menu.dart';
import 'models/menu/menu_section.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sliver Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuDetail(),
    );
  }
}

class MenuDetail extends StatefulWidget {
  const MenuDetail({
    Key key,
  }) : super(key: key);

  @override
  _MenuDetailState createState() => _MenuDetailState();
}

class _MenuDetailState extends State<MenuDetail> {
  final ScrollController _scrollController = ScrollController();
  Menu menu;
  @override
  void initState() {
    super.initState();
    final menuMap = menuInfo["menus"].first;
    menu = Menu.fromMap(menuMap);
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    var top = 0.0;
    return Scaffold(
      body: DefaultTabController(
        length: menu.menuSections.length,
        child: NestedScrollView(
          controller: _scrollController,
          //  physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverOverlapAbsorber(
                // This widget takes the overlapping behavior of the SliverAppBar,
                // and redirects it to the SliverOverlapInjector below. If it is
                handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: MultiSliver(
                  children: [
                    SliverAppBar(
                      expandedHeight: 200.0,
                      pinned: true,
                      elevation: 0,
                      backgroundColor: theme.scaffoldBackgroundColor,
                      iconTheme: theme.iconTheme,
                      textTheme: theme.textTheme,
                      flexibleSpace: LayoutBuilder(
                        builder: (BuildContext context, BoxConstraints constraints) {
                          //print('constraints=' + constraints.toString());
                          top = constraints.biggest.height;

                          return FlexibleSpaceBar(
                            centerTitle: true,
                            title: AnimatedOpacity(
                              duration: const Duration(milliseconds: 300),
                              opacity: top < 130 ? 1 : 0,
                              //opacity: 1.0,
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Text(
                                  menu?.name ?? '',
                                  maxLines: 1,
                                  style: theme.textTheme.headline6,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                            background: Container(),
                          );
                        },
                      ),
                    ),
                    SliverPinnedHeader(
                      child: Container(
                        alignment: Alignment.center,
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: TabBar(
                          indicatorSize: TabBarIndicatorSize.label,
                          isScrollable: true,
                          indicatorColor: theme.primaryColor,
                          labelColor: theme.textTheme.bodyText1.color,
                          unselectedLabelColor: theme.textTheme.bodyText1.color.withAlpha(120),
                          tabs: menu.menuSections
                              .map((ms) => TabBarSectionHeader(
                                    menuSection: ms,
                                  ))
                              .toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            //controller: controller,

            children: <Widget>[
              ...menu.menuSections.map((ms) {
                return Builder(
                  // This Builder is needed to provide a BuildContext that is
                  // "inside" the NestedScrollView, so that
                  // sliverOverlapAbsorberHandleFor() can find the
                  // NestedScrollView.
                  builder: (BuildContext context) {
                    return CustomScrollView(
                      // The "controller" and "primary" members should be left
                      // unset, so that the NestedScrollView can control this
                      // inner scroll view.
                      key: PageStorageKey<String>(ms.id),
                      physics: const ClampingScrollPhysics(),
                      slivers: <Widget>[
                        // SliverOverlapInjector(
                        //   // This is the flip side of the SliverOverlapAbsorber
                        //   // above.
                        //   handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                        // ),

                        ///Esto hace la misma funcion que el SliverOverlapInjector pero funciona mejor con los Stocky Headers
                        const SliverPinnedHeader(
                            child: SizedBox(
                          height: 36,
                        )),
                        SectionDetail(
                          menuSection: ms,
                          showHeader: false,
                        ),
                      ],
                    );
                  },
                );
              })
            ],
          ),
        ),
      ),
    );
  }
}

class TabBarSectionHeader extends StatelessWidget {
  const TabBarSectionHeader({
    Key key,
    @required this.menuSection,
  }) : super(key: key);
  final MenuSection menuSection;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(menuSection.name),
        ],
      ),
    );
  }
}
