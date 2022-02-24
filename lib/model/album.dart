class Album {
  Album({
    required this.name,
    this.cover,
    this.artist,
    this.year,
    this.genre,
  });

  final String name;
  final String? artist;
  final String? cover;
  final String? year;
  final String? genre;
}
