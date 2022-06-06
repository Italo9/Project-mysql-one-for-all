DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.planos(
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_plano  VARCHAR(100) NOT NULL,
    valor_plano DECIMAL(3,2)  NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuarios(
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome_usuario VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    plano_usuario INT NOT NULL,
    data_assinatura DATE NOT NULL,
    FOREIGN KEY (plano_usuario) REFERENCES SpotifyClone.planos(plano_id)
);

CREATE TABLE SpotifyClone.artistas(
    artista_id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    nome_artista VARCHAR(100) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.albuns(
    album_id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    nome_album  VARCHAR(100) NOT NULL,
    ano_lancamento INT NOT NULL,
    artista_id INT NOT NULL, 
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artistas(artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.musicas(
    musica_id INT NOT NULL AUTO_INCREMENT  PRIMARY KEY,
    nome_musicas  VARCHAR(100) NOT NULL,
    duracao_musica INT NOT NULL,
    album_id INT NOT NULL,
    FOREIGN KEY (album_id) REFERENCES albuns(album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.reproducao_usuarios(
    usuario_id INT NOT NULL,
    musica_id INT NOT NULL, 
    data_reprodu DATETIME NOT NULL,
    CONSTRAINT reproducao_usuarios PRIMARY KEY(usuario_id, musica_id),
    FOREIGN KEY (usuario_id ) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (musica_id ) REFERENCES musicas (musica_id)
) engine = InnoDB;


CREATE TABLE SpotifyClone.usuarios_artista(
    usuario_id INT NOT NULL,
    artista_id INT NOT NULL,
    CONSTRAINT PRIMARY KEY(usuario_id, artista_id),
    FOREIGN KEY (usuario_id) REFERENCES usuarios (usuario_id),
    FOREIGN KEY (artista_id) REFERENCES artistas (artista_id)
   
) engine = InnoDB;


INSERT INTO SpotifyClone.planos (nome_plano, valor_plano)
VALUES
  ("gratuito", 0),
  ("familiar", 7.99),
  ("universitário", 5.99),
  ("pessoal", 6.99);


INSERT INTO SpotifyClone.usuarios (nome_usuario, idade, plano_usuario, data_assinatura)
VALUES
  ('Thati', 23, 1, "2019-10-20"),
  ('Cintia', 35, 2, "2017-12-30"),
  ('Bill', 20, 3, "2019-06-05"),
  ('Roger', 45, 4, "2020-05-13"),
  ('Norman', 58, 4, "2017-02-17"),
  ('Patrick', 33, 2, "2017-01-06"),
  ('Vivian', 26, 3, "2018-01-05"),
  ('Carol', 19, 3, "2018-02-14"),
  ('Angelina', 42, 2, "2018-04-29"),
  ('Paul', 46, 2, "2017-01-17");


INSERT INTO SpotifyClone.artistas (nome_artista)
VALUES
  ('Walter Phoenix'),
  ('Peter Strong'),
  ('Lance Day'),
  ('Freedie Shannon'),
  ('Tyler Isle'),
  ('Fog');

INSERT INTO SpotifyClone.albuns (nome_album, ano_lancamento, artista_id)
VALUES
  ('Envious', 1990, 1),
  ('Exuberant', 1993, 1),
  ('Hallowed Steam', 1995, 2),
  ('Incandescent', 1998, 3),
  ('Temporary Culture', 2001, 4),
  ('Library of liberty', 2003, 4),
  ('Chained Down', 2007, 5),
  ('Cabinet of fools', 2012, 5),
  ('No guarantees', 2015, 5),
  ('Apparatus', 2015, 6);


INSERT INTO SpotifyClone.musicas (nome_musicas, duracao_musica, album_id)
VALUES
  ('Soul For Us', 200, 1),
  ('Reflections Of Magic', 163, 1),
  ('Dance With Her Own', 116, 1),
  ('Troubles Of My Inner Fire', 203, 2),
  ('Time Fireworks', 152, 2),
  ('Magic Circus', 105, 3),
  ('Honey, So Do I', 207, 3),
  ("Sweetie, Let's Go Wild", 139, 3),
  ('She Knows', 244, 3),
  ('Fantasy For Me', 100, 4),
  ('Celebration Of More', 146, 4),
  ('Rock His Everything', 223, 4),
  ('Home Forever', 231, 4),
  ('Diamond Power', 241, 4),
  ("Let's Be Silly", 132, 4),
  ('Thang Of Thunder', 240, 5),
  ('Words Of Her Life', 185, 5),
  ('Without My Streets', 176, 5),
  ('Need Of The Evening', 190, 6),
  ('History Of My Roses', 222, 6),
  ('Without My Love', 111, 6),
  ('Walking And Game', 123, 6),
  ('Young And Father', 197, 6),
  ('Finding My Traditions', 179, 7),
  ('Walking And Man', 229, 7),
  ('Hard And Time', 135, 7),
  ("Honey, I'm A Lone Wolf", 150, 7),
  ("She Thinks I Won't Stay Tonight", 166, 8),
  ("He Heard You're Bad For Me", 154, 8),
  ("He Hopes We Can't Stay", 210, 8),
  ('"I Know I Know"', 117, 8),
  ("He's Walking Away", 159, 9),
  ("He's Trouble", 138, 9),
  ("I Heard I Want To Bo Alone", 120, 9),
  ('I Ride Alone', 151, 9),
  ('Honey', 79, 10),
  ('You Cheated On Me', 95, 10),
  ("Wouldn't It Be Nice", 213, 10),
  ('Baby', 136, 10),
  ('You Make Me Feel So..', 83, 10);

INSERT INTO SpotifyClone.reproducao_usuarios (usuario_id, musica_id, data_reprodu)
VALUES
  (1, 1, '2020-02-28 10:45:55'),
  (1, 2, "2020-05-02 05:30:35"),
  (1, 3, "2020-03-06 11:22:33"),
  (1, 4, "2020-08-05 08:05:17"),
  (1, 5, "2020-09-14 16:32:22"),
  (1, 6, "2020-01-02 07:40:33"),
  (2, 7, "2020-05-16 06:16:22"),
  (2, 8, "2020-10-09 12:27:48"),
  (2, 9, "2020-09-21 13:14:46"),
  (2, 10, "2020-11-13 16:55:13"),
  (3, 11, "2020-12-05 18:38:30"),
  (3, 12, "2020-07-30 10:00:00"),
  (3, 13, "2021-08-15 17:10:10"),
  (4, 14, "2021-07-10 15:20:30"),
  (4, 15, "2021-01-09 01:44:33"),
  (4, 16, "2020-07-03 19:33:28"),
  (5, 17, "2017-02-24 21:14:22"),
  (5, 18, "2020-08-06 15:23:43"),
  (5, 19, "2020-11-10 13:52:27"),
  (5, 20, "2019-02-07 20:33:48"),
  (6, 21, "2017-01-24 00:31:17"),
  (6, 22, "2017-10-12 12:35:20"),
  (6, 23, "2018-05-29 14:56:41"),
  (6, 24, "2018-05-09 22:30:49"),
  (7, 25, "2020-07-27 12:52:58"),
  (7, 26, "2018-01-16 18:40:43"),
  (7, 27, "2018-03-21 16:56:40"),
  (8, 28, "2020-10-18 13:38:05"),
  (8, 29, "2019-05-25 08:14:03"),
  (8, 30, "2021-08-15 21:37:09"),
  (8, 31, "2021-05-24 17:23:45"),
  (9, 32, "2018-12-07 22:48:52"),
  (9, 33, "2021-03-14 06:14:26"),
  (9, 34, "2020-04-01 03:36:00"),
  (9, 35, "2017-02-06 08:21:34"),
  (10, 36, "2017-12-04 05:33:43"),
  (10, 37, "2017-07-27 05:24:49"),
  (10, 38, "2017-12-25 01:03:57");

INSERT INTO SpotifyClone.usuarios_artista (usuario_id, artista_id)
VALUES
  (1, 1),
  (1, 4),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (3, 1),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 3),
  (6, 1),
  (7, 2),
  (7, 5),
  (8, 1),
  (8, 5),
  (9, 6),
  (9, 4),
  (9, 3),
  (10, 2),
  (10, 6);

