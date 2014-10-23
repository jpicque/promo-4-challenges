require 'sqlite3'

def detailed_tracks(db)
  # TODO: return the list of tracks with their album and artist
  db.execute("SELECT t.name, al.title, ar.name
FROM tracks t
JOIN albums al ON (t.album_id = al.id)
JOIN artists ar ON (al.artist_id = ar.id)")
end

def stats_on(db, genre_name)
  # TODO: For the given category of music, return the number of tracks and the average song length (as a stats hash)
query = db.execute("SELECT COUNT(*), AVG(milliseconds)
  FROM tracks t
  JOIN genres g ON (t.genre_id = g.id)
  WHERE g.name = '#{genre_name}';"
  ).flatten
length = (query[1] / 60_000).round(2)

{
  category: genre_name,
  number_of_songs: query[0],
  avg_length: length
}
end

def top_five_artists(db, genre_name)
  # TODO: return list of top 5 rock artists
  query = db.execute("SELECT ar.name COUNT ar.name
    FROM tracks t
    JOIN genres g ON
    JOIN
    JOIN")
end