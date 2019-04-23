-- Récupérer tous les albums
SELECT * FROM album ;

-- ### Récupérer tous les albums dont le titre contient "Great"
SELECT * FROM albums
WHERE Title LIKE '%great%';

-- Donner le nombre total d albums contenus dans la base (sans regarder les id bien sûr)
SELECT COUNT(Title)
FROM albums;

-- Supprimer tous les albums dont le nom contient music
DELETE FROM albums
WHERE Title LIKE '%music%';

-- Récupérer tous les albums écrits par AC/DC
SELECT * FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistId
WHERE artists.Name = 'AC/DC';

-- Récupérer tous les titres des albums de AC/DC
SELECT Title
FROM albums
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE artists.Name = 'AC/DC';

-- Récupérer la liste des titres de l'album "Let There Be Rock"
SELECT Name
FROM tracks
JOIN albums ON albums.AlbumId = tracks.AlbumId
WHERE albums.Title = 'Let There Be Rock';

-- Afficher le prix de cet album ainsi que sa durée totale
SELECT SUM(UnitPrice), SUM(Milliseconds)
FROM tracks
JOIN albums ON albums.AlbumId = tracks.AlbumId
WHERE albums.Title = 'Let There Be Rock';

-- Afficher le coût de l'intégralité de la discographie de "Deep Purple"
SELECT SUM(UnitPrice)
FROM tracks
JOIN albums ON albums.AlbumId = tracks.AlbumId
JOIN artists ON artists.ArtistId = albums.ArtistId
WHERE artists.Name = 'Deep Purple';
