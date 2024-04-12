/*
1.
a) Mostre os números de 1 a 50 na tela, dizendo se é par ou ímpar:

b) Mostre apenas os múltiplos de 3 entre 1 e 100:

c) Mostre a seguinte sequência (de 100 até 0, pulando de dois em dois):


2. O jogo do PIM é um jogo em que o Sílvio Santos pedia para os 
participantes de seu programa 
contar de 1 até 40 da seguinte forma:
"1, 2, 3, PIM, 5, 6, 7, PIM, 9, 10, 11, PIM,
Ou seja, quando o número era múltiplo de 4, 
o jogador tinha que falar PIM ao invés do número! 
Crie uma lógica que executa o jogo do PIM corretamente.
*/




document.write("<h1>Numeros pares</h1>");
for (let i = 0; i <=50;i++){
    if (i%2 == 0){
        document.write(`O numero ${i} é par <br>`);
    }
    else
    {
            document.write(`O numero ${i} é ímpar <br>`);
    }
}
document.write("<h1>múltiplos de 3 entre 1 e 100</h1>");
for (let i = 0; i <=100;i++){
    if (i%3 == 0){
        document.write(`O numero ${i} é multiplo de três <br>`);
    }
   
}

document.write("<h1>De 100 a 0</h1>");
for (let i = 100; i > 0 ; i=i-2){
   
        document.write(`O numero ${i}<br>`);
    
   
}

document.write("<h1>Jogo do PIM</h1>");
for (let i = 1; i <=40;i++){
    if (i%4 == 0){
        document.write(`PIM<br>`);
    }
    else
    {
            document.write(` ${i}  <br>`);
    }
   
}