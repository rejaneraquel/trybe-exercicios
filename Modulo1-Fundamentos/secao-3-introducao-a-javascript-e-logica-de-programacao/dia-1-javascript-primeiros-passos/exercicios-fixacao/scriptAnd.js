// 1.Crie uma constante chamada "currentHour" que recebe um número entre 4 e 24 de sua escolha, para representar as horas do dia. 
const currentHour = 4;
// 2. Crie uma variável chamada "message" que, inicialmente, é uma string vazia.
let message = "";
/* 3.Implemente condicionais para que:
Se o horário for maior ou igual a 22, insira "Não deveríamos comer nada, é hora de dormir" na variável "message".*/
if (currentHour >= 22) {
    let message = "Não deveríamos comer nada, é hora de dormir";
    console.log(message);
}
/*Se o horário for maior ou igual a 18 e menor que 22, insira "Rango da noite, vamos jantar :D" na variável "message".*/
else if (currentHour >= 18 && currentHour < 22) {
    let message = "Rango da noite, vamos jantar :D"
    console.log(message);
}
/*Se o horário for maior ou igual a 14 e menor que 18, insira "Vamos fazer um bolo pro café da tarde?" na variável "message".*/
else if ( currentHour >= 14 && currentHour < 18) {
    let message ="Vamos fazer um bolo pro café da tarde?"
    console.log(message);
}
/*Se o horário estiver entre 11 e 14, insira "Hora do almoço!!!" na variável "message".*/
if (currentHour >= 11 && currentHour < 14) {
    let message = "Hora do almoço!!!"
    console.log(message);
}

/*Se o horário estiver entre 4 e 11, insira "Hmmm, cheiro de café recém passado" na variável "message". */
else if (currentHour >= 4 && currentHour < 11) { let message = "Hmmm, cheiro de café recém passsado"
console.log(message)
} else {
let message = "Horário não disponível"
console.log(message)
}

//console.log(message);