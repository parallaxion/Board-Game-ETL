CREATE DATABASE stlpieces_db;

USE stlpieces_db;

select * from stlpiecesclean;

select * from gameid;

CREATE TABLE stlpieceswithid 
	SELECT stlpiecesclean.name as game, gameid.id as id, category, playerno, difficulty, avgplaytime, age FROM stlpiecesclean
	INNER JOIN gameid
	ON stlpiecesclean.name=gameid.name;
    
select * from stlpieceswithid;
