// App.test.js
import { render, screen } from '@testing-library/react';
import userEvent from '@testing-library/user-event';
import React from 'react';
import App from './App';
import ValidEmail from './ValidEmail';


// Adicione esse teste.
test('Verificando se o botão e o campo email estão funcionando.', () => {
  render(<App />);
  //Renderizamos a aplicação, depois salvamos o email da pessoa usuária em uma variável (o que é uma boa prática). 
  const EMAIL_USER = 'email@email.com';

  const textEmail = screen.getByTestId('id-email-user');
  expect(textEmail).toBeInTheDocument();
  // Verificamos se a tag <h2> onde o email aparece na tela está apenas com o texto Valor:,
  expect(textEmail).toHaveTextContent('Valor:');
  //Procuramos pelo o campo de email e o botão que enviará os dados.
  const btnSend = screen.getByTestId('id-send');
  const inputEmail = screen.getByLabelText('Email');
  //Simulamos a digitação da pessoa usuária no campo de email, com o userEvent.type(inputEmail, EMAIL_USER), passando o campo do input como primeiro parâmetro e o valor esperado como segundo parâmetro ('email@email.com').
  userEvent.type(inputEmail, EMAIL_USER);
  // Simulamos um clique no botão com o userEvent.click(btnSend), passando o elemento do botão como parâmetro.
  userEvent.click(btnSend);
  // Verificamos se após o click, o campo de input do email retorna para vazio e se a tag <h2>, que anteriormente só exibia Valor:, agora recebe o email passado ao input, resultando em Valor: email@email.com.
  expect(inputEmail).toHaveValue('');
  expect(textEmail).toHaveTextContent(`Valor: ${EMAIL_USER}`);
});
test('Testando se o componente possui texto verde ao ser digitado um e-mail válido.', () => {
  const EMAIL_USER = 'email@email.com';

  render(<ValidEmail email={EMAIL_USER} />);
  const isValidText = screen.getByTestId('id-is-email-valid');
  expect(isValidText).toHaveAttribute('class', 'green-text');
});

test('Testando se o componente possui texto vermelho ao ser digitado um e-mail inválido.', () => {
  const EMAIL_USER = 'emailerrado';

  render(<ValidEmail email={EMAIL_USER} />);
  const isValidText = screen.getByTestId('id-is-email-valid');
  expect(isValidText).toHaveAttribute('class', 'red-text');
});