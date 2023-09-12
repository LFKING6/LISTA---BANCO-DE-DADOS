SELECT titulo AS Titulo_do_Livro FROM livros;

SELECT nome AS Nome_Autor FROM autores WHERE nascimento < '1900-01-01';

SELECT titulo AS Titulo_do_Livro FROM livros WHERE autor_id = 1;

SELECT alunos.nome AS Nome_Aluno
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id
WHERE curso = 'Engenharia de Software';

SELECT produto, SUM(receita) AS Receita_Total FROM vendas 
GROUP BY produto;

SELECT autores.nome AS Nome_Autor, COUNT(livros.id) AS Numero_de_Livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome;

SELECT matriculas.curso AS Curso, COUNT(alunos.nome) AS Numero_de_Alunos
FROM matriculas
INNER JOIN alunos ON matriculas.aluno_id = alunos.id
GROUP BY matriculas.curso;

SELECT produto AS Produto, AVG(receita) AS Media_de_Receita FROM vendas GROUP BY produto;

SELECT produto AS Produto, SUM(receita) AS Receita_Total
FROM vendas
GROUP BY produto
HAVING Receita_Total > 10000;

SELECT autores.nome AS Nome_Autor, COUNT(livros.id) AS Numero_de_Livros
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id
GROUP BY autores.nome
HAVING Numero_de_Livros > 2;

SELECT livros.titulo AS Titulo_do_Livro, autores.nome AS Nome_Autor
FROM livros
INNER JOIN autores ON livros.autor_id = autores.id;

SELECT alunos.nome AS Nome_Aluno, matriculas.curso AS Curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;

SELECT autores.nome AS Nome_Autor, livros.titulo AS Titulo_do_Livro
FROM autores
LEFT JOIN livros ON autores.id = livros.autor_id;

SELECT matriculas.curso AS Curso, alunos.nome AS Nome_Aluno
FROM matriculas
RIGHT JOIN alunos ON matriculas.aluno_id = alunos.id;

SELECT alunos.nome AS NomeAluno, matriculas.curso AS Curso
FROM alunos
INNER JOIN matriculas ON alunos.id = matriculas.aluno_id;

