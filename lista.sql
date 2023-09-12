SELECT titulo AS Titulo_do_Livro FROM livros;

SELECT nome AS Nome_Autor FROM autores WHERE nascimento < '1900-01-01';

SELECT titulo AS Titulo_do_Livro FROM livros WHERE autor_id = 1;

SELECT alunos.nome AS Nome_Aluno
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE curso = 'Engenharia de Software';

SELECT produto, SUM(receita) AS Receita_Total FROM vendas 
GROUP BY produto;