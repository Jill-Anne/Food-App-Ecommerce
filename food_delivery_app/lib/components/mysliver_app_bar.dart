import 'package:flutter/material.dart';

class MySliverAppBar extends StatefulWidget {
  final Widget child;
  final Widget title;
  const MySliverAppBar({super.key, required this.child, required this.title});

  @override
  State<MySliverAppBar> createState() => _MySliverAppBarState();
}

class _MySliverAppBarState extends State<MySliverAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 340.0,
      collapsedHeight: 120.0,
      floating: false,
      pinned: true,
      actions:[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.shopping_cart)
        )
      ],
      backgroundColor: Theme.of(context).colorScheme.surface,
      foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      title: Text("Sunset Dinner"),
      flexibleSpace: FlexibleSpaceBar(
        title: widget.title,
        background: Padding(
          padding: const EdgeInsets.only(bottom: 50.0),
          child: widget.child,
        ),
        centerTitle: true,
        titlePadding: const EdgeInsets.only(left: 0, right: 0, top: 0),
        expandedTitleScale: 1,
      ),
    );
  }
}
