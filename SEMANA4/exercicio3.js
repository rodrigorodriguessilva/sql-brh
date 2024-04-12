let idade  = prompt('Quantos anos voce tem?');
let mensagem;

if (idade  <16 )
{
    mensagem = 'Nao pode votar';
}
else 
{
    if (idade > 16 && idade<18||idade>70)
        {
            mensagem = 'A votação para você e opcional';
        }
    else
        {
            mensagem = 'A votação para você e obrigatoria';
        }
}
console.log(mensagem); 
document.write(mensagem);
/*

No Brasil, uma pessoa é obrigada a votar se tiver idade entre 18 e 70 anos. 
+Acima de 70 anos o voto é opcional, assim como para quem tem 16 ou 17 anos. 
+Quem ainda não completou 16 anos não pode votar. 
Através de estruturas condicionais, crie um programa que dirá se uma pessoa 
pode ou não votar, de acordo com a idade que será armazenada em uma variável.

■ Se desejar, você pode utilizar o prompt() e pedir para que a pessoa usuária 
digite uma idade!

■ Se precisar, revise sobre como utilizar operadores de comparação aqui. */