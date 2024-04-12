/*1. Crie 5 variáveis e atribua valores, respeitando os tipos de dados a serem armazenados. Em seguida, em uma variável chamada profissional, concatene as variáveis abaixo formando uma string que faça sentido com os dados informados e apresente essa variável com o método document.write() em algum arquivo.html ou utilizando o console.log().

a. nome (string)
b. telefone (string)
c. se possui convênio médico ou não (booleano)
d. profissão (string)
e. salário (number)*/

let nome = 'Rodrigo';
let telefone = '19 98256-5555';
let possuiConvenio = true;  
let profissao = 'professor';
let salario = 5500.52;
let profissional;
 
profissional = `Bom dia ${profissao} ${nome} seu telefone e ${telefone} e seu salário é ${salario} e o status de seu convenio é ${possuiConvenio}  `;

function mensagem(){
    console.log(profissional);
}

mensagem() ;

/*
2. Crie uma lógica que armazene dois números inteiros em duas variáveis.
 Em seguida, troque o valor dessas variáveis e exiba na tela. 
 Por exemplo, uma variável ae outra b, em algum momento avai valer b, e bvai valer a, 
 mas quando a = b, o valor inicial de apode ser perdido, atenção!
*/

var a = 10;
var b = 20;
var aux;
console.log('a: ' + a + ' b: '+b)
aux = a;
a = b;
b = aux;

console.log('a: ' + a + ' b: '+b)