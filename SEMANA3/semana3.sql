/*Criar uma consulta que liste os dependentes que 
nasceram em abril, maio ou junho, ou tenham a letra "h" no nome.;
Adicione o código da consulta em sql/comandos.sql.
*/


SELECT C.NOME AS NOME_COLABORADOR,
       D.NOME AS NOME_DEPENDENTE,
       D.DATA_NASCIMENTO
FROM BRH.DEPENDENTE D
INNER JOIN BRH.COLABORADOR C ON C.MATRICULA = D.COLABORADOR   
WHERE extract(month from D.data_nascimento) in (4,5,6) 
  OR upper(D.nome) like '%H%'
ORDER BY C.NOME, D.NOME ;


/*
Tarefa
Criar consulta que liste nome e o salário do colaborador com o maior salário;
Adicione o código da consulta em sql/comandos.sql.
OBS.: A consulta deve ser flexível para continuar funcionando 
caso surja algum funcionário com salário maior que o do Zico.
*/


select nome as nome_colaborador ,salario 
from brh.colaborador 
WHERE salario=(select max(salario) from brh.colaborador) 
ORDER BY  salario desc

/*
Contexto
A senioridade dos colaboradores é determinada pela faixa salarial:

Júnior: até R$ 3.000,00;
Pleno: R$ 3.000,01 a R$ 6.000,00;
Sênior: R$ 6.000,01 a R$ 20.000,00;
Corpo diretor: acima de R$ 20.000,00

Tarefa
Criar uma consulta que liste a matrícula, nome, salário, e nível de senioridade do colaborador;
Adicione o código da consulta em sql/comandos.sql.
Regras de aceitação
Ordene a listagem por senioridade e por nome.
*/

select  matricula, nome salario ,case 
when salario<=3000 then 'Junior'
when salario>3000 and salario<=6000 then 'Pleno'
when salario>6000 and salario<=20000 then 'Senior'
else 'Diretor'
end as nivel
from brh.colaborador
order by  nivel,nome

/*
Tarefa

Criar consulta que liste o 
nome do departamento, nome do projeto e quantos colaboradores daquele departamento fazem parte do projeto;

Adicione o código da consulta em sql/comandos.sql.

Regras de aceitação

Ordene a consulta pelo nome do departamento e nome do projeto.

A saída deve ser igual à imagem anexa abaixo.
*/


SELECT D.NOME,
       P.NOME,
       COUNT(C.MATRICULA) AS QUANTIDADE_COLABORADORES
FROM BRH.PROJETO P
INNER JOIN BRH.ATRIBUICAO A ON P.ID = A.PROJETO
INNER JOIN BRH.COLABORADOR C ON A.COLABORADOR = C.MATRICULA
INNER JOIN BRH.DEPARTAMENTO D ON D.SIGLA = C.DEPARTAMENTO
GROUP BY D.NOME,
         P.NOME
ORDER BY D.NOME,
         P.NOME ;


/*

Tarefa
Criar consulta que liste nome do colaborador e a quantidade de dependentes que ele possui;
Adicione o código da consulta em sql/comandos.sql.
Regras de aceitação
No relatório deve ter somente colaboradores com 2 ou mais dependentes.
Ordenar consulta pela quantidade de dependentes em ordem decrescente, e colaborador crescente.
A saída deve ser igual à imagem anexa abaixo
*/

SELECT C.NOME, COUNT(D.COLABORADOR) AS QTD_DEPENDENTES
FROM BRH.COLABORADOR C 
INNER JOIN BRH.DEPENDENTE D
ON C.MATRICULA = D.COLABORADOR
GROUP BY C.NOME
HAVING COUNT(D.COLABORADOR) > 1
ORDER BY QTD_DEPENDENTES DESC,
         C.NOME ;

/*
Tarefa
Crie uma consulta que liste:
O nome do Departamento;
O nome do chefe do Departamento;
O nome do Colaborador;

O nome do Projeto que ele está alocado;
O nome do papel desempenhado por ele;
O número de telefone do Colaborador;
O nome do Dependente do Colaborador.
Adicione o código da consulta em sql/comandos.sql
Faça commit do arquivo.
Regras de aceitação
O resultado deve ser ordenado pelo nome do nome do projeto, nome do colaborador e nome do dependente.

**/


         
SELECT D.NOME AS DEPARTAMENTO,
       CH.NOME AS CHEFE,
       CO.NOME AS COLABORADOR,
       PR.NOME AS PROJETO,
       PA.NOME AS PAPEL,
       T.NUMERO AS TELEFONE,
       DEP.NOME AS DEPENDENTE
FROM BRH.ATRIBUICAO A
INNER JOIN BRH.PROJETO PR ON A.PROJETO = PR.ID
INNER JOIN BRH.PAPEL PA ON A.PAPEL = PA.ID
INNER JOIN BRH.COLABORADOR CO ON A.COLABORADOR = CO.MATRICULA
INNER JOIN BRH.DEPARTAMENTO D ON CO.DEPARTAMENTO = D.SIGLA
INNER JOIN BRH.COLABORADOR CH ON D.CHEFE = CH.MATRICULA
INNER JOIN BRH.TELEFONE_COLABORADOR T ON CO.MATRICULA = T.COLABORADOR
INNER JOIN BRH.DEPENDENTE DEP ON CO.MATRICULA = DEP.COLABORADOR
ORDER BY PROJETO,
         COLABORADOR,
         DEPENDENTE ;
        