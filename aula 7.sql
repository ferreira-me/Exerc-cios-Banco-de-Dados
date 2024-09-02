--1 Listar o nome dos fornecedores(maiusculo) e das peças(minusculo) que se situam na mesma cidade, ordenado pelo nome
SELECT 
    UPPER(f.nome) AS fornecedor_nome,
    LOWER(p.nome) AS peca_nome
FROM 
    tbl_fornecedor f
JOIN 
    tbl_peca p ON f.cidade = p.cidade
ORDER BY 
    fornecedor_nome;
	

--2 listar as cidades onde existem fornecedores (sem valores duplicados)
SELECT DISTINCT f.cidade AS fornecedor_cidade
FROM tbl_fornecedor f;

--3 Listar o nome e a cor das peças do fornecedor com código 3, ordenado
--pelo nome da peça
SELECT 
    p.nome AS peca_nome,
    p.cor AS peca_cor
FROM 
    tbl_peca p
JOIN 
    tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE 
    e.cod_fornecedor = 3
ORDER BY 
    p.nome;

--4 Listar o nome e a cidade dos fornecedores com mais de 10 peças.Contar só as peças de código 1. 
SELECT 
    f.nome,
    f.cidade
FROM 
    tbl_fornecedor f
JOIN 
    tbl_estoque e ON f.cod_fornecedor = e.cod_fornecedor
WHERE 
    e.cod_peca = 1
GROUP BY 
    f.nome, f.cidade
HAVING 
    SUM(e.quantidade) > 10;


--5 Listar a quantidade total de peças com código 1, fornecidas pelos fornecedores
SELECT 
    SUM(e.quantidade) AS total_quantidade
FROM 
    tbl_estoque e
JOIN 
    tbl_peca p ON e.cod_peca = p.cod_peca
WHERE 
    p.cod_peca = 1;
	
--6 Listar a média dos preços das peças fornecidas pelo fornecedor com código 3.
SELECT 
    AVG(p.preco) AS media_preco
FROM 
    tbl_peca p
JOIN 
    tbl_estoque e ON p.cod_peca = e.cod_peca
WHERE 
    e.cod_fornecedor = 3;

--7 lista o valor da pecas mais cara e a mais barata.
select max (p.preco) as mais_cara, min (p.preco)
from tbl_peca p ;

--8 listar a quantidade de peças cadastradas
select count (nome) from tbl_peca;

--9 listar a quantidade de cidades diferentes onde existem peças cadastradas
select count (distinct (cidade)) from tbl_peca;

--10 listar a media dos precos de todas as peças, com somente 1 digito após a virgula.
SELECT 
    ROUND(AVG(p.preco), 1) AS media_preco
FROM 
    tbl_peca p;




