--1 Liste os títulos e seus status, incluindo os que não têm status definido. (retorna 6 linhas)
SELECT t.titulo, l.status AS status
FROM tbl_titulo AS t
LEFT JOIN tbl_livros AS l ON t.codigo_titulo = l.codigo_titulo;

--2 Liste os títulos e suas descrições dos livros alugados (retorna 4 linhas)
select t.titulo, t.descricao,l.status as status 
from tbl_titulo as t 
left join tbl_livros as l on t.codigo_titulo = l.codigo_titulo
WHERE l.status = 'ALUGADO';

--3 Liste os nomes dos clientes que não têm livros alugados (retorna 1 linha)
select l.status as status, c.nome
from tbl_cliente as c
left join tbl_livros as l on c.codigo_cliente = l.codigo_titulo
where l.status = 'DISPONIVEL';

--4 Liste os títulos e suas categorias dos livros disponiveis (retorna 1 linha).
select t.titulo, t.categoria, l.status as status
from tbl_titulo as t 
left join tbl_livros as l on t.codigo_titulo = l.codigo_titulo
where l.status = 'DISPONIVEL';

--5 Liste os nomes dos clientes e os títulos dos livros que eles têm alugados (retorna 5 linhas).
SELECT c.nome AS cliente, t.titulo AS livro
FROM tbl_cliente AS c
JOIN tbl_emprestimo AS e ON c.codigo_cliente = e.codigo_cliente
JOIN tbl_livros AS l ON e.codigo_livro = l.cod_livro
JOIN tbl_titulo AS t ON l.codigo_titulo = t.codigo_titulo
WHERE l.status = 'ALUGADO';

--6 Retorne o nome, titulo do livro e o status do esmprestimo do livro alugado pela Ana Oliveira (retorna 1 linha)
SELECT c.nome AS cliente, t.titulo AS livro, l.status AS status_emprestimo
FROM tbl_cliente AS c
JOIN tbl_emprestimo AS e ON c.codigo_cliente = e.codigo_cliente
JOIN tbl_livros AS l ON e.codigo_livro = l.cod_livro
JOIN tbl_titulo AS t ON l.codigo_titulo = t.codigo_titulo
WHERE c.nome = 'Ana Oliveira' AND l.status = 'ALUGADO';





