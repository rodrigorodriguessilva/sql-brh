/*
1. Crie uma lista chamada pessoa, coloque valores dentro dela como: 
nome (string), idade (inteiro), CPF (string), altura (decimal), 
se é maior de idade ou não (valor booleano true ou false).

2. Crie um programa que recebe uma quantidade máxima de 10 de 
letras e ao final exibe todas elas no console.

Crie uma função chamada recebeLetra para pegar a 
letra e colocar na lista de letras.

3. Considerando o exercício anterior, refaça ele criando uma 
lista que irá armazenar as letras e em seguida mostre no console:

a) A primeira letra digitada
b) A quarta letra digitada
c) A quinta letra digitada
d) A última letra digitada
e) O tamanho da lista criada
*/




let chamada =["Rodrigo",39,"123.456.789-00",1.72,true];
console.log(chamada);
let letra;
let listaletras = [];

function recebeLetra(){
    for (let i = 0; i <10;i++) {   
        letra = prompt("Digite uma letra");
        listaletras.push(letra);
    }
}
function mostraLetras(){
    for (let i = 0; i <10; i++) {
        document.write(listaletras[i]+ " ");
    }
}

//recebeLetra(); 
//mostraLetras(); 



recebeLetra(); 
console.log(listaletras[0]);
console.log(listaletras[3]);
console.log(listaletras[4]);
console.log(listaletras[9]);
console.log(listaletras.length);