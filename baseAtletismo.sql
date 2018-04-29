CREATE DATABASE atletismo
GO
USE atletismo


CREATE TABLE pais(
	cod VARCHAR(3) NOT NULL,
	nome VARCHAR(100),
	PRIMARY KEY(cod)
)
CREATE TABLE atleta(
	cod INT IDENTITY NOT NULL,
	cod_pais VARCHAR(3),
	nome VARCHAR (100),
	sexo VARCHAR(1),
	PRIMARY KEY(cod),
	FOREIGN KEY (cod_pais) REFERENCES pais(cod)
)
CREATE TABLE prova(
cod INT IDENTITY NOT NULL,
prova VARCHAR(50) NOT NULL,
sexo varchar(1) NOT NULL,
tipo INT NOT NULL,
PRIMARY KEY (cod)
)


CREATE TABLE prova_atleta(
cod_prova INT NOT NULL,
cod_atleta INT NOT NULL,
resultado DECIMAL (7, 2),
PRIMARY KEY(cod_prova, cod_atleta),
FOREIGN KEY (cod_prova) REFERENCES prova(cod),
FOREIGN KEY (cod_atleta) REFERENCES atleta(cod)
)

CREATE TABLE recorde(
cod_prova INT NOT NULL,
cod_atleta INT NOT NULL,
resultado DECIMAL (7, 2),
PRIMARY KEY (cod_prova, cod_atleta),
FOREIGN KEY (cod_prova) REFERENCES prova(cod),
FOREIGN KEY (cod_atleta) REFERENCES atleta(cod)
)

INSERT INTO pais VALUES
('AFG', 'Afeganistao'),
('ALB', 'Albania'),
('ALG', 'Argelia'),
('AND', 'Andorra'),
('ANG', 'Angola'),
('ANT', 'Antiga e Barbuda'),
('ASA', 'Samoa Americana'),
('ARG', 'Argentina'),
('Arm', 'Armenia'),
('ARU', 'Aruba'),
('AUS', 'Australia'),
('AUT', 'Austria'),
('AZE', 'Azerbaijao'),
('BAH', 'Bahamas'),
('BAN', 'Bangladesh'),
('BAR', 'Barbados'),
('BDI', 'Burundi'),
('BEL', 'Belgica'),
('BEN', 'Benim'),
('BER', 'Bermudas'),
('BHU', 'Butao'),
('BIH', 'Bosnia e Herzegovina'),
('BIZ', 'Belize'),
('BLR', 'Bielorrusia'),
('BOL', 'Bolivia'),
('BOT', 'Botswana'),
('BRA', 'Brasil')
