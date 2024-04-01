/*Cadastrar o novo colaborador Fulano de Tal no 
novo projeto BI para exercer o 
papel de Especialista de Negócios.

//Informações sobre o colaborador
Possui o telefone celular (61) 9 9999-9999;
Possui o telefone residencial (61) 3030-4040;
Email pessoal é fulano@email.com;
Email de trabalho será é fulano.tal@brh.com;
Possui dois dependentes:
Filha Beltrana de Tal;
Esposa Cicrana de Tal.
Atenção
Você deve escolher os valores dos demais campos para o colaborador, dependentes e projeto;
Atenção à ordem em que os registros devem ser inseridos.*/



INSERT INTO brh.papel (id, nome) VALUES (8, 'Especialista de Negócios');


insert into brh.endereco
(cep,uf,cidade,bairro)
values
('13900-100','SP','Itapira','Centro')


INSERT INTO brh.colaborador 
(matricula, nome, cpf, salario, departamento, cep, logradouro, complemento_endereco)
 VALUES 
 ('F124', 'Fulano de Tal', '123.46.789-00', '9999', 'DEPTI', '13900-100', 'Avenida dos Fulanos', 'Casa 235');


INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F124', '(61) 99999-9999', 'M');

INSERT INTO brh.telefone_colaborador (colaborador, numero, tipo) VALUES ('F124', '(61) 3030-4040', 'R');


INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F124', 'fulano@email.com', 'P');
INSERT INTO brh.email_colaborador (colaborador, email, tipo) VALUES ('F124', 'fulano.tal@brh.com', 'T');

SELECT * FROM brh.email_colaborador WHERE colaborador = 'F124'



INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('243.361.588-67', 'F124', 'Beltrana de Tal', 'Filho(a)', to_date('2015-01-01', 'yyyy-mm-dd'));


INSERT INTO brh.dependente (cpf, colaborador, nome, parentesco, data_nascimento) VALUES ('243.258.588-67', 'F124', 'Cicrana de Tal', 'Cônjuge', to_date('1985-01-01', 'yyyy-mm-dd'));

SELECT * FROM brh.dependente WHERE colaborador = 'F124'


/*
Contexto
A colaboradora Maria se casou e precisa que seus dados sejam atualizados na base.

Informações sobre o colaborador
Nome de casada: Maria Mendonça;
Email: maria.mendonca@email.com;

*/
SELECT * FROM brh.colaborador

UPDATE brh.colaborador 
SET   nome = 'Maria Mendonça'
WHERE    matricula = 'M123'

SELECT * FROM brh.colaborador


UPDATE brh.email_colaborador
SET   EMAIL = 'maria.mendonca@email.com'
WHERE    COLABORADOR = 'M123' AND tipo = 'P'

SELECT * FROM brh.email_colaborador where colaborador = 'M123' AND tipo = 'P'



/*
Crie uma consulta que liste:
matricula do colaborador;
nome do dependente;
data de nascimento do dependente.
*/
SELECT colaborador , nome, data_nascimento as data_dep 
FROM brh.DEPENDENTE
where parentesco = 'Cônjuge'

/*
Tarefa
Crie uma consulta que liste:
matricula do colaborador;
número de telefone.

Regras de aceitação
A consulta deve listar somente telefones móveis ou comerciais;
O resultado deve ser ordenado pela matrícula do colaborador e pelo número do telefone.*/




SELECT COLABORADOR , NUMERO FROM BRH.TELEFONE_COLABORADOR
WHERE TIPO = 'C' OR TIPO = 'M'
ORDER BY COLABORADOR ASC , NUMERO ASC


/*

Contexto
O departamento SECAP não é mais parte da nossa organização, e todos os colaboradores serão dispensados (somente para fins didáticos).

Tarefa
Remova o departamento SECAP da base de dados;
Adicione os comandos em sql/comandos.sql;

*/

DELETE FROM BRH.DEPARTAMENTO  WHERE  SIGLA = 'SECAP'



/*Relatório de departamentos
Crie uma consulta que liste a sigla e o nome do departamento;
A consulta deve listar somente os colaboradores que:
morem no CEP 71777-700;
trabalhem nos departamentos SECAP ou SESEG.
O resultado da consulta deve ser ordenado pelo nome do departamento.*/
SELECT D.SIGLA, D.NOME
FROM BRH.DEPARTAMENTO D INNER JOIN BRH.COLABORADOR C
ON D.SIGLA = C.DEPARTAMENTO
WHERE (C.CEP = '71777-700')AND (C.DEPARTAMENTO IN ('SECAP','SESEG'))
ORDER BY C.NOME;


