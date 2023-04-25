use master;
drop database MovieLens;

CREATE DATABASE MovieLens;
use MovieLens;

create table movies
(
	movieId	numeric(8, 0),
	title	varchar(200),
	genres	varchar(500),
	primary key(movieId)
);

create table ratings
(
    ratingId int auto_increment primary key,
	userId	numeric(8, 0),
	movieId	numeric(8, 0),
	ratingScore	float,
    ratingTime datetime,
    foreign key (movieId) references movies(movieId)
);

create table tags
(
    tagId   int auto_increment primary key,
	userId	numeric(8, 0),
	movieId	numeric(8, 0),
	tag	    varchar(1000),
	tagTime datetime,
	foreign key (movieId) references movies(movieId)
);

create table links
(
	movieId	numeric(8, 0),
	imdbId	varchar(20),
	tmdbId	varchar(20),
	primary key(movieId),
	foreign key(movieId) references movies(movieId)
);

create table links
(
	movieId	numeric(8, 0),
	imdbId	varchar(20),
	tmdbId	varchar(20),
	primary key(movieId),
	foreign key(movieId) references movies(movieId)
);

create table movies_detail
(
	movieId numeric(8, 0),
	title varchar(200),
	releaseDate date,
	genres 	varchar(500),
	runtime varchar(3),
	overview varchar(1000),
	backgroundPath varchar(50),
	posterPath varchar(50),
	primary key (movieId),
	foreign key(movieId) references movies(movieId)
);