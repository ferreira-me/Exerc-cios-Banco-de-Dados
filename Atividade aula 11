--1 crie uma store procedure chamada proc_upd_nome_depart para atualizar o nome de um departamento. 
--recebe como parametro um codigo inteiro e um novonome em texto atualizando o nome do departamento com esse respectivo codigo

CREATE OR REPLACE PROCEDURE proc_upd_nome_depart(
    p_cod_departamento INT,
    p_novo_nome TEXT
) AS $$
BEGIN
    UPDATE tbl_departamentos
    SET nome = p_novo_nome
    WHERE cod_departamento = p_cod_departamento;
END;
$$ LANGUAGE plpgsql;


--2 crie uma store procedure chamada proc_copiatbl que cria uma copia da tabela tbl_cidades toda vez que for executada;
CREATE OR REPLACE PROCEDURE proc_copiatbl() AS $$
BEGIN
    EXECUTE 'CREATE TABLE IF NOT EXISTS tbl_cidades_copia AS TABLE tbl_cidades';
END;
$$ LANGUAGE plpgsql;


--3 crie uma store procedure chamada proc_novoprojeto que adiciona um novo projeto na tabela tbl_projetos
--recebe como parametros o nome do projeto e o codigo do departamento
CREATE OR REPLACE PROCEDURE proc_novoprojeto(
    p_nome_projeto TEXT,
    p_cod_departamento INT
) AS $$
BEGIN
    INSERT INTO tbl_projetos (nome, cod_departamento)
    VALUES (p_nome_projeto, p_cod_departamento);
END;
$$ LANGUAGE plpgsql;


--4 crie uma store procedure chamada proc_delprojeto que deleta um projeto da tbl_projetos
-- recebe como parametro o codigo do projeto
CREATE OR REPLACE PROCEDURE proc_delprojeto(
    p_cod_projeto INT
) AS $$
BEGIN
    DELETE FROM tbl_projetos
    WHERE cod_projeto = p_cod_projeto;
END;
$$ LANGUAGE plpgsql;


--5 crie uma store procedure chamada proc_projeto_arquivado que recebe o codigo de um projeto.
--a procedure devera criar uma tabela chamada tbl_projetos_arquivados, caso ela nao exista. tabela deve ter 2 colunas: codigo_projeto e nome.
--a procedure deve salvar o projeto do codigo recebido na tbl_projetos_arquivados e deleta-la da tabela tbl_projetos.
CREATE OR REPLACE PROCEDURE proc_projeto_arquivado(
    p_cod_projeto INT
) AS $$
BEGIN
    -- Cria a tabela se não existir
    EXECUTE 'CREATE TABLE IF NOT EXISTS tbl_projetos_arquivados (
                codigo_projeto INT PRIMARY KEY,
                nome TEXT NOT NULL
              )';

    -- Insere o projeto na tabela de arquivados
    INSERT INTO tbl_projetos_arquivados (codigo_projeto, nome)
    SELECT cod_projeto, nome FROM tbl_projetos WHERE cod_projeto = p_cod_projeto;

    -- Deleta o projeto da tabela original
    DELETE FROM tbl_projetos WHERE cod_projeto = p_cod_projeto;
END;
$$ LANGUAGE plpgsql;
