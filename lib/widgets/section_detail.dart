import 'package:flutter/material.dart';
import 'package:sliver_tools/sliver_tools.dart';

import 'expandable.dart';
import 'menu_item_tile.dart';
import '../models/menu/menu_section.dart';

class SectionDetail extends StatelessWidget {
  const SectionDetail({
    Key key,
    this.menuSection,
    this.showHeader = true,
  }) : super(key: key);
  final MenuSection menuSection;
  final bool showHeader;
  @override
  Widget build(BuildContext context) {
    if (menuSection.menuSections != null && menuSection.menuSections.isNotEmpty) {
      return MultiSliver(
        children: [
          ...menuSection.menuSections.map(
            (ms) => SectionDetail(
              menuSection: ms,
            ),
          )
        ],
      );
    }
    if (showHeader) {
      return ExpandableSliverView(
        childrenPadding: const EdgeInsets.all(0.0),
        collapseHeader: SectionSliverHeader(
          menuSection: menuSection,
        ),
        expandedChild: SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return MenuItemTile(
                index: index,
                menuItem: menuSection.menuItems[index],
              );
            },
            childCount: menuSection.menuItems.length,
          ),
        ),
      );
    }

    return SliverPadding(
      padding: const EdgeInsets.only(top: 4),
      sliver: SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return MenuItemTile(
              index: index,
              menuItem: menuSection.menuItems[index],
            );
          },
          childCount: menuSection.menuItems.length,
        ),
      ),
    );
  }
}

class SectionSliverHeader extends StatelessWidget {
  const SectionSliverHeader({Key key, @required this.menuSection}) : super(key: key);
  final MenuSection menuSection;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 6),
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // AwesomeImage(
          //   imageGuid: menuSection.imageId,
          //   height: 30,
          // ),
          const SizedBox(
            width: 10,
            height: 30,
          ),
          Text(
            menuSection.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
