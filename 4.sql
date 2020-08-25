# -- BONUS INTRO SQL 1--
select * from PiecesProviders.Provides;
select Piece, Price from PiecesProviders.Provides where Provider = 'RBT';
select * from PiecesProviders.Provides, PiecesProviders.Pieces, PiecesProviders.Providers order by price desc limit 5;
select distinct Name, Price from PiecesProviders.Provides, PiecesProviders.Providers order by price desc limit 4;
select * from PiecesProviders.Provides, PiecesProviders.Pieces where Provider = 'HAL' order by price desc;
select count(Piece) from PiecesProviders.Provides where Piece = 1;