/*
7.Escreva um programa que converte uma nota dada em porcentagem (de 0 a 100) em conceitos de A a F. Siga essas regras:
Porcentagem >= 90 -> A
Porcentagem >= 80 -> B
Porcentagem >= 70 -> C
Porcentagem >= 60 -> D
Porcentagem >= 50 -> E
Porcentagem < 50 -> F
O programa deve retornar uma mensagem de erro e encerrar se a nota passada for menor que 0 ou maior que 100.
*/
const nota = 101;
if (nota >= 90 && nota <=100) {
    console.log('Nota A');
} else if (nota >= 80 && nota < 90) {
    console.log('Nota B');
} else if (nota >=70 && nota < 80) {
    console.log('Nota C');
} else if (nota >=60 && nota < 70) {
    console.log('Nota D')
}  else if (nota >=50 && nota < 60) {
    console.log('Nota E')
}  else if (nota >=0 && nota < 50) {
    console.log('Nota F')
} else {
    console.log('Erro! Nota passada não está entre 0 e 100')
}

/*
GABARITO TRYBE

const grade = 76;

if (grade < 0 || grade > 100) {
  console.log("Erro, nota incorreta!");
} else if (grade >= 90) {
  console.log("A");
} else if (grade >= 80) {
  console.log("B");
} else if (grade >= 70) {
  console.log("C");
} else if (grade >= 60) {
  console.log("D");
} else if (grade >= 50) {
  console.log("E");
} else {
  console.log("F");
}
*/