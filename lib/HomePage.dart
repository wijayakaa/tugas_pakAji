import 'package:flutter/material.dart';
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
      title: 'FToy Story 3',
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
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Daftar Film'),
    ),
    body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          final movie = movies[index];
          return ListTile(
            leading: Image.network(movie.poster),
            title: Text(movie.title),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Tahun Rilis: ${movie.year}'),
                Text('Rate: ${movie.rate}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
