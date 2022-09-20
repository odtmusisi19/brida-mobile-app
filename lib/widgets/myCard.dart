import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String image, title;
  const MyCard({Key? key, required this.image, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.all(5),
        width: MediaQuery.of(context).size.width,
        height: 200,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GridTile(
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                icon: const Icon(Icons.favorite_border_outlined),
                color: Theme.of(context).colorScheme.secondary,
                onPressed: () {},
              ),
              title: Text(
                title,
                textAlign: TextAlign.center,
              ),
              trailing: IconButton(
                icon: const Icon(Icons.shopping_cart),
                onPressed: () {},
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            child: GestureDetector(
              onTap: () {},
              child: Image.network(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
