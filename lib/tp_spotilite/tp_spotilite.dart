import 'package:flutter/material.dart';

import 'musique.dart';

void main() => runApp(SpotiLiteApp());

class SpotiLiteApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: SpotilitePage(),
    );
  }
}

class SpotilitePage extends StatefulWidget {
  const SpotilitePage({
    super.key,
  });

  @override
  State<SpotilitePage> createState() => _SpotilitePageState();
}

class _SpotilitePageState extends State<SpotilitePage> {
  //Si c'est off trier par nom
  bool isGenreSorted = false;
  List<Musique> tracks = [
    Musique(name: "Hey Jude", genre: "Rock", author: "The Beatles"),
    Musique(name: "Bohemian Rhapsody", genre: "Rock", author: "Queen"),
    Musique(name: "Stairway to Heaven", genre: "Rock", author: "Led Zeppelin"),
    Musique(name: "Like a Rolling Stone", genre: "Folk Rock", author: "Bob Dylan"),
    Musique(name: "Smells Like Teen Spirit", genre: "Grunge", author: "Nirvana"),
    Musique(name: "Billie Jean", genre: "Pop", author: "Michael Jackson"),
    Musique(name: "Space Oddity", genre: "Rock", author: "David Bowie"),
    Musique(name: "Comfortably Numb", genre: "Progressive Rock", author: "Pink Floyd"),
    Musique(name: "(I Can't Get No) Satisfaction", genre: "Rock", author: "The Rolling Stones"),
    Musique(name: "Purple Haze", genre: "Rock", author: "Jimi Hendrix"),
    Musique(name: "Purple Rain", genre: "Pop Rock", author: "Prince"),
    Musique(name: "With or Without You", genre: "Rock", author: "U2"),
    Musique(name: "Born to Run", genre: "Rock", author: "Bruce Springsteen"),
    Musique(name: "Creep", genre: "Alternative Rock", author: "Radiohead"),
    Musique(name: "Hotel California", genre: "Rock", author: "The Eagles"),
    Musique(name: "Dreams", genre: "Rock", author: "Fleetwood Mac"),
    Musique(name: "No Woman, No Cry", genre: "Reggae", author: "Bob Marley"),
    Musique(name: "Your Song", genre: "Pop", author: "Elton John"),
    Musique(name: "Won't Get Fooled Again", genre: "Rock", author: "The Who"),
    Musique(name: "Hurt", genre: "Alternative Rock", author: "Johnny Cash"),
    Musique(name: "Respect", genre: "Soul", author: "Aretha Franklin"),
    Musique(name: "What's Going On", genre: "Soul", author: "Marvin Gaye"),
    Musique(name: "God Only Knows", genre: "Pop", author: "The Beach Boys"),
    Musique(name: "Superstition", genre: "Funk", author: "Stevie Wonder"),
    Musique(name: "Wonderwall", genre: "Rock", author: "Oasis"),
    Musique(name: "Sweet Child o' Mine", genre: "Rock", author: "Guns N' Roses"),
    Musique(name: "Yellow", genre: "Alternative Rock", author: "Coldplay"),
    Musique(name: "Light My Fire", genre: "Rock", author: "The Doors"),
    Musique(name: "Losing My Religion", genre: "Alternative Rock", author: "R.E.M."),
    Musique(name: "The Sound of Silence", genre: "Folk Rock", author: "Simon & Garfunkel"),
    Musique(name: "Johnny B. Goode", genre: "Rock and Roll", author: "Chuck Berry"),
    Musique(name: "London Calling", genre: "Punk Rock", author: "The Clash"),
    Musique(name: "What'd I Say", genre: "R&B", author: "Ray Charles"),
    Musique(name: "Both Sides Now", genre: "Folk", author: "Joni Mitchell"),
    Musique(name: "You Really Got Me", genre: "Rock", author: "The Kinks"),
    Musique(name: "Autobahn", genre: "Electronic", author: "Kraftwerk"),
    Musique(name: "Once in a Lifetime", genre: "New Wave", author: "Talking Heads"),
    Musique(name: "Back in Black", genre: "Hard Rock", author: "AC/DC"),
    Musique(name: "Lose Yourself", genre: "Hip Hop", author: "Eminem"),
    Musique(name: "Every Breath You Take", genre: "Rock", author: "The Police"),
    Musique(name: "Like a Prayer", genre: "Pop", author: "Madonna"),
    Musique(name: "Song 2", genre: "Alternative Rock", author: "Blur"),
    Musique(name: "Enter Sandman", genre: "Heavy Metal", author: "Metallica"),
    Musique(name: "Just Like Heaven", genre: "Alternative Rock", author: "The Cure"),
    Musique(name: "Crazy in Love", genre: "R&B", author: "Beyoncé"),
    Musique(name: "Under the Bridge", genre: "Alternative Rock", author: "Red Hot Chili Peppers"),
    Musique(name: "Sunday Morning", genre: "Experimental Rock", author: "The Velvet Underground"),
    Musique(name: "Love Will Tear Us Apart", genre: "Post-Punk", author: "Joy Division"),
    Musique(name: "There Is a Light That Never Goes Out", genre: "Alternative Rock", author: "The Smiths"),
    Musique(name: "One More Time", genre: "Electronic", author: "Daft Punk"),
    Musique(name: "Stronger", genre: "Hip Hop", author: "Kanye West"),
    Musique(name: "Rolling in the Deep", genre: "Pop", author: "Adele"),
    Musique(name: "Umbrella", genre: "R&B", author: "Rihanna"),
    Musique(name: "Enjoy the Silence", genre: "Synth-Pop", author: "Depeche Mode"),
    Musique(name: "Unfinished Sympathy", genre: "Trip Hop", author: "Massive Attack"),
    Musique(name: "It's Oh So Quiet", genre: "Avant-Garde Pop", author: "Björk"),
    Musique(name: "Glory Box", genre: "Trip Hop", author: "Portishead"),
    Musique(name: "Hey Boy Hey Girl", genre: "Electronic", author: "The Chemical Brothers"),
    Musique(name: "Firestarter", genre: "Electronic", author: "The Prodigy"),
    Musique(name: "Killing in the Name", genre: "Alternative Metal", author: "Rage Against the Machine"),
    Musique(name: "Closer", genre: "Industrial Rock", author: "Nine Inch Nails"),
    Musique(name: "Where Is My Mind?", genre: "Alternative Rock", author: "Pixies"),
    Musique(name: "Teen Age Riot", genre: "Noise Rock", author: "Sonic Youth"),
    Musique(name: "Sabotage", genre: "Hip Hop Rock", author: "Beastie Boys"),
    Musique(name: "C.R.E.A.M.", genre: "Hip Hop", author: "Wu-Tang Clan"),
    Musique(name: "Nuthin' but a 'G' Thang", genre: "Hip Hop", author: "Dr. Dre"),
    Musique(name: "California Love", genre: "Hip Hop", author: "Tupac"),
    Musique(name: "Juicy", genre: "Hip Hop", author: "The Notorious B.I.G."),
    Musique(name: "N.Y. State of Mind", genre: "Hip Hop", author: "Nas"),
    Musique(name: "99 Problems", genre: "Hip Hop", author: "Jay-Z"),
    Musique(name: "Hey Ya!", genre: "Hip Hop", author: "Outkast"),
    Musique(name: "Get Ur Freak On", genre: "Hip Hop", author: "Missy Elliott"),
    Musique(name: "Get Lucky", genre: "Disco", author: "Daft Punk"),
    Musique(name: "Feel Good Inc.", genre: "Alternative Hip Hop", author: "Gorillaz"),
    Musique(name: "Seven Nation Army", genre: "Alternative Rock", author: "The White Stripes"),
    Musique(name: "Last Nite", genre: "Indie Rock", author: "The Strokes"),
    Musique(name: "I Bet You Look Good on the Dancefloor", genre: "Indie Rock", author: "Arctic Monkeys"),
    Musique(name: "Take Me Out", genre: "Indie Rock", author: "Franz Ferdinand"),
    Musique(name: "Wake Up", genre: "Indie Rock", author: "Arcade Fire"),
    Musique(name: "Paranoid Android", genre: "Alternative Rock", author: "Radiohead"),
    Musique(name: "Supermassive Black Hole", genre: "Alternative Rock", author: "Muse"),
    Musique(name: "Everlong", genre: "Alternative Rock", author: "Foo Fighters"),
    Musique(name: "Basket Case", genre: "Punk Rock", author: "Green Day"),
    Musique(name: "Buddy Holly", genre: "Alternative Rock", author: "Weezer"),
    Musique(name: "All the Small Things", genre: "Pop Punk", author: "Blink-182"),
    Musique(name: "Fat Lip", genre: "Pop Punk", author: "Sum 41"),
    Musique(name: "Self Esteem", genre: "Punk Rock", author: "The Offspring"),
    Musique(name: "In the End", genre: "Nu Metal", author: "Linkin Park"),
    Musique(name: "Chop Suey!", genre: "Nu Metal", author: "System of a Down"),
    Musique(name: "Freak on a Leash", genre: "Nu Metal", author: "Korn"),
    Musique(name: "Nookie", genre: "Nu Metal", author: "Limp Bizkit"),
    Musique(name: "Wait and Bleed", genre: "Nu Metal", author: "Slipknot"),
    Musique(name: "Du Hast", genre: "Industrial Metal", author: "Rammstein"),
    Musique(name: "The Beautiful People", genre: "Industrial Metal", author: "Marilyn Manson"),
    Musique(name: "Schism", genre: "Progressive Metal", author: "Tool"),
    Musique(name: "1979", genre: "Alternative Rock", author: "Smashing Pumpkins"),
    Musique(name: "Alive", genre: "Grunge", author: "Pearl Jam"),
    Musique(name: "Black Hole Sun", genre: "Grunge", author: "Soundgarden"),
    Musique(name: "Man in the Box", genre: "Grunge", author: "Alice in Chains"),
    Musique(name: "Plush", genre: "Grunge", author: "Stone Temple Pilots"),
    Musique(name: "Like a Stone", genre: "Alternative Rock", author: "Audioslave"),
    Musique(name: "Bulls on Parade", genre: "Alternative Metal", author: "Rage Against the Machine"),
    Musique(name: "Californication", genre: "Alternative Rock", author: "Red Hot Chili Peppers"),
    Musique(name: "Stellar", genre: "Alternative Rock", author: "Incubus"),
    Musique(name: "Amber", genre: "Alternative Rock", author: "311"),
    Musique(name: "Santeria", genre: "Ska Punk", author: "Sublime"),
    Musique(name: "Don't Speak", genre: "Alternative Rock", author: "No Doubt"),
    Musique(name: "You Oughta Know", genre: "Alternative Rock", author: "Alanis Morissette"),
    Musique(name: "Criminal", genre: "Alternative Rock", author: "Fiona Apple"),
    Musique(name: "Only Happy When It Rains", genre: "Alternative Rock", author: "Garbage"),
    Musique(name: "Zombie", genre: "Alternative Rock", author: "The Cranberries"),
    Musique(name: "Lovefool", genre: "Pop Rock", author: "The Cardigans"),
    Musique(name: "Wannabe", genre: "Pop", author: "Spice Girls"),
    Musique(name: "I Want It That Way", genre: "Pop", author: "Backstreet Boys"),
    Musique(name: "Bye Bye Bye", genre: "Pop", author: "NSYNC"),
    Musique(name: "...Baby One More Time", genre: "Pop", author: "Britney Spears"),
    Musique(name: "Genie in a Bottle", genre: "Pop", author: "Christina Aguilera"),
    Musique(name: "Say My Name", genre: "R&B", author: "Destiny's Child"),
    Musique(name: "No Scrubs", genre: "R&B", author: "TLC"),
    Musique(name: "No Diggity", genre: "R&B", author: "Blackstreet"),
    Musique(name: "Pony", genre: "R&B", author: "Ginuwine"),
    Musique(name: "This Is How We Do It", genre: "R&B", author: "Montell Jordan"),
    Musique(name: "Hot in Herre", genre: "Hip Hop", author: "Nelly"),
    Musique(name: "Yeah!", genre: "Hip Hop", author: "Usher"),
    Musique(name: "Cry Me a River", genre: "Pop", author: "Justin Timberlake"),
    Musique(name: "Fallin'", genre: "R&B", author: "Alicia Keys"),
    Musique(name: "Complicated", genre: "Pop Rock", author: "Avril Lavigne"),
    Musique(name: "Bring Me to Life", genre: "Nu Metal", author: "Evanescence"),
    Musique(name: "Misery Business", genre: "Pop Punk", author: "Paramore"),
    Musique(name: "Welcome to the Black Parade", genre: "Alternative Rock", author: "My Chemical Romance"),
    Musique(name: "Sugar, We're Goin Down", genre: "Pop Punk", author: "Fall Out Boy"),
    Musique(name: "I Write Sins Not Tragedies", genre: "Pop Rock", author: "Panic! at the Disco"),
    Musique(name: "Mr. Brightside", genre: "Alternative Rock", author: "The Killers"),
    Musique(name: "Sex on Fire", genre: "Alternative Rock", author: "Kings of Leon"),
    Musique(name: "Kids", genre: "Indie Rock", author: "MGMT"),
    Musique(name: "Lonely Boy", genre: "Blues Rock", author: "The Black Keys"),
    Musique(name: "A-Punk", genre: "Indie Rock", author: "Vampire Weekend"),
    Musique(name: "Dog Days Are Over", genre: "Indie Rock", author: "Florence + The Machine"),
    Musique(name: "Royals", genre: "Art Pop", author: "Lorde"),
    Musique(name: "Video Games", genre: "Indie Pop", author: "Lana Del Rey"),
    Musique(name: "Rehab", genre: "Soul", author: "Amy Winehouse"),
    Musique(name: "Uptown Funk", genre: "Funk", author: "Mark Ronson ft. Bruno Mars"),
    Musique(name: "Blinding Lights", genre: "Synth-Pop", author: "The Weeknd"),
    Musique(name: "Don't Start Now", genre: "Disco-Pop", author: "Dua Lipa"),
    Musique(name: "bad guy", genre: "Electropop", author: "Billie Eilish"),
    Musique(name: "Bad Romance", genre: "Electropop", author: "Lady Gaga"),
    Musique(name: "Shape of You", genre: "Pop", author: "Ed Sheeran"),
    Musique(name: "Shake It Off", genre: "Pop", author: "Taylor Swift"),
    Musique(name: "thank u, next", genre: "Pop", author: "Ariana Grande"),
    Musique(name: "God's Plan", genre: "Hip Hop", author: "Drake"),
    Musique(name: "Circles", genre: "Pop", author: "Post Malone"),
    Musique(name: "Sicko Mode", genre: "Hip Hop", author: "Travis Scott"),
    Musique(name: "HUMBLE.", genre: "Hip Hop", author: "Kendrick Lamar"),
  ];

  void sortList(){
    tracks.sort(
      (a,b)=> (isGenreSorted) ?
      a.genre.compareTo(b.genre) :
      a.name.compareTo(b.name));
  }

  @override
  void initState() {
    super.initState();
    isGenreSorted = false;
    sortList();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spotilite'),
      ),
      body: Column(
        children: [
          Row(children: [
            Icon(Icons.sort_by_alpha),
            Switch(value: isGenreSorted,
                onChanged: (newV){
                  setState(() {
                    isGenreSorted = newV;
                    sortList();
                  });
                }),
            Icon(Icons.music_note)
          ],),
          Expanded(
            child: ListView.builder(
              itemCount: tracks.length,
              itemBuilder: (context, index) =>
              ListTile(
                title: Text(tracks[index].name),
                subtitle: Text(tracks[index].genre),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
