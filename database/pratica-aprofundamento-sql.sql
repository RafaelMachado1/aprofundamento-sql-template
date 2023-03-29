-- Active: 1680031548189@@127.0.0.1@3306
-- Conecte o arquivo pratica-aprofundamento-sql.db com a extensão MySQL e ative a conexão aqui

-- Deletar tabela
DROP TABLE pokemons;

-- Criar tabela
CREATE TABLE pokemons (
    id INTEGER PRIMARY KEY UNIQUE NOT NULL,
    name TEXT UNIQUE NOT NULL,
    type TEXT NOT NULL,
    hp INTEGER NOT NULL,
    attack INTEGER NOT NULL,
    defense INTEGER NOT NULL,
    special_attack INTEGER NOT NULL,
    special_defense INTEGER NOT NULL,
    speed INTEGER NOT NULL
);

-- Popular tabela
INSERT INTO pokemons (
    id,
    name,
    type,
    hp,
    attack,
    defense,
    special_attack,
    special_defense,
    speed
)
VALUES 
    (1, "bulbasaur", "grass", 45, 49, 49, 65, 65, 45),
    (2, "ivysaur", "grass", 60, 62, 63, 80, 80, 60),
    (3, "venusaur", "grass", 80, 82, 83, 100, 100, 80),
    (4, "charmander", "fire", 39, 52, 43, 60, 50, 65),
    (5, "charmeleon", "fire", 58, 64, 58, 80, 65, 80),
    (6, "charizard", "fire", 78, 84, 78, 109, 85, 100),
    (7, "squirtle", "water", 44, 48, 65, 50, 64, 43),
    (8, "wartortle", "water", 59, 63, 80, 65, 80, 58),
    (9, "blastoise", "water", 79, 83, 100, 85, 105, 78);

-- Buscar todos os pokemons
SELECT * FROM pokemons;

-- Práticas

SELECT * FROM pokemons --Buscar pokemons que tenham speed maior que 60--
WHERE speed > 60;

SELECT * FROM pokemons --Buscar pokemons que tenham attack e espcial_attack maiores ou iguais a 60--
WHERE attack >= 60 AND special_attack >= 60;

SELECT * FROM pokemons --Buscar pokemons que terminam--
WHERE name like "%saur";


--PRATICA 2 --
SELECT AVG(hp) FROM pokemons; --Busque na tabela pokemons a média simples da coluna hp--

SELECT COUNT(*) FROM pokemons; --Busque o número de linhas da tabela pokemons--


SELECT AVG(hp) AS "mediaHP" FROM pokemons; --Busque na tabela pokemons a média simples da coluna HP e refatore o nome para camelCase--


SELECT count(*) AS "numeroDeLinhas" FROM pokemons; --Busque o número de linhas da tabela pokemons e refatore o nome para camelCase--

--PRATICA 3--
--BUSQUE TODOS OS POKEMONS E ORDENE-OS BASEADO NA COLUNA DEFENSE EM ORDEM DECRESCENTE--
SELECT * FROM pokemons
ORDER BY defense DESC;

--BUSQUE NOVAMENTE O NÚMERO DE POKEMONS CADASTRADOS, MAS AGORA AGRUPE O RESULTADO BASEADO NA COLUNA TYPE--
SELECT COUNT(*) AS "totalDoTipo",
type
FROM pokemons
GROUP BY type;

--BUSQUE POR TODOS OS POKEMONS, LIMITE O RESULTADO A 3 LINHAS INICIANDO A PARTIR DA QUINTA LINHA
SELECT * from pokemons
LIMIT 3
OFFSET 5; 



-- Fixação --
--Busque por todos os pokémons aplicando:

-- 1. Filtrar o resultado, mostrando somente os itens que possuem a coluna type valendo fire ou grass
SELECT * FROM pokemons
WHERE type = "fire" 
    OR type = "grass";

-- 2. Ordem crescente baseado na coluna attack
SELECT * FROM pokemons ORDER BY attack ASC;

-- 3. Resultado das linhas limitado a 3 e iniciando a partir da terceira linha
SELECT * FROM pokemons
LIMIT 3
OFFSET 3;
