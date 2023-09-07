import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'Movie.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Movie> movies = [
    Movie(
      title: 'Bernard Bear',
      year: '2023',  
      rate: '8.5',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/bernard.jpg',
    ),
    Movie(
      title: 'Toy Story 1',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/toystory1.jpg',
    ),
    Movie(
      title: 'Toy Story 2',
      year: '2023',
      rate: '8.5',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/toystory2.jpg',
    ),
    Movie(
      title: 'Toy Story 3',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/toystory3.jpg',
    ),
    Movie(
      title: 'Toy Story 4',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/toystory4.jpg',
    ),
    Movie(
      title: 'Doraemon Nobita And The Space Heroes',
      year: '2023',  
      rate: '8.5',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/doraemon1.jpg',
    ),
    Movie(
      title: 'Nobita and the Island of Miracle',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/doraemon2.jpg',
    ),
    Movie(
      title: 'New Nobita s Great Demon ',
      year: '2023',
      rate: '8.5',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/doraemon3.jpg',
    ),
    Movie(
      title: 'Doraemon Moon Exploration',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/doraemon4.jpg',
    ),
    Movie(
      title: 'Doraemon Stand By Me',
      year: '2022',
      rate: '7.9',
      poster: 'https://hosteddatatugas.xpplg2.repl.co/doraemon5.jpg',
    ),
  ];
    Map<int, double> movieRatings = {}; 

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Film'),
        backgroundColor: Colors.blue,
      ),

      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: movies.length,
          itemBuilder: (context, index) {
            final movie = movies[index];
            return Card(
              elevation: 2,
              margin: EdgeInsets.all(10),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 100,
                      height: 150,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(movie.poster),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            movie.title,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text('Tahun Rilis: ${movie.year}'),
                          SizedBox(height: 5),
                          Text('Rate: ${movie.rate}'),
                          RatingBar.builder(
                            initialRating: movieRatings[index] ?? double.parse(movie.rate),
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 30,
                            itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {
                              setState(() {
                                movieRatings[index] = rating;
                                print("Rating updated to: $rating");
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}