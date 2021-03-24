import 'package:flutter/material.dart';

import '../models/menu/menu_item.dart';

const li =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. ";

class MenuItemTile extends StatelessWidget {
  const MenuItemTile({
    Key key,
    @required this.index,
    @required this.menuItem,
  }) : super(key: key);

  final int index;
  final MenuItem menuItem;

  double get defaultPrice {
    if (menuItem.price != null && menuItem.price.isNotEmpty) {
      return double.tryParse(menuItem.price.first.amount);
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(4),
      child: InkWell(
        onTap: () {},
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (menuItem.imageId != null)
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Container(
                  height: 50,
                  width: 50,
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      menuItem.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    Text(
                      menuItem.description,
                      style: Theme.of(context).textTheme.caption,

                      maxLines: 1,
                      // linkColor: Colors.blue,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          defaultPrice.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
