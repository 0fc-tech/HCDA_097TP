import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(

          title: Text('Twitter'),
        ),
        body: Column(
          children: [
            RowNavigation(),
            Tweet(),
            TweetActions(),
            Spacer(),
            BottomNavBar()
          ],
        ));
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [],);
  }
}

class TweetActions extends StatelessWidget {
  const TweetActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: (){},
              child: Text("Répondre")
          ),
          TextButton(
              onPressed: (){},
              child: Text("Retweet")
          ),
          TextButton(
              onPressed: (){},
              child: Text("Favoris")
          )
        ],
      ),
    );
  }
}

class Tweet extends StatelessWidget {
  const Tweet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network("https://picsum.photos/120",
        width:120,
        height: 120,),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("LaCrevette@Chocolate"),
                    Text("50s"),
                ],
                ),
                Text(maxLines: 5,
                    "Loremp isumLoremp is"
                    "umLoremp isumLoremp isumLoremp "
                    "isumLoremp isumLoremp isumLoremp"
                    " isumLoremp isumLoremp isumLoremp"
                    " isumLoremp isumLoremp isumLoremp"
                    " isumLoremp isumLoremp isumLoremp"
                    " isumLoremp isumLoremp isumLoremp"
                    " isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isumLoremp isum"),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class RowNavigation extends StatelessWidget {
  const RowNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 80.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: (){},
              child: Text("Nouveau")
          ),
          TextButton(
              onPressed: (){},
              child: Text("Accueil")
          ),
          TextButton(
              onPressed: (){},
              child: Text("Rechercher")
          )
        ],
      ),
    );
  }
}
