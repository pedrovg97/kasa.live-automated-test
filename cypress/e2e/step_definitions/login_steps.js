import { Given, When, Then, Before } from "@badeball/cypress-cucumber-preprocessor";

Before(() => {
    cy.clearFirebaseSession()
});


// --- Given ---
Given('que estou na página inicial', () => {
  cy.visit('/');
});


// --- When ---
When('faço login com o email {string} e senha {string}', (email, password) => {
  const finalEmail = email === 'valido' ? Cypress.env('email') : email;
  const finalPassword = password === 'valida' ? Cypress.env('password') : password;

  cy.login(finalEmail, finalPassword);
});

When('clico em sair', () => {
  cy.get('[data-cy="btn-logout-profile"').click();
});


// --- Then ---
Then('devo ver meu perfil logado', () => {
  cy.get('[title="Pedro"]').should('be.visible');
});

Then('devo ver uma mensagem de erro de autenticação', () => {
  cy.contains('Não foi possivel fazer o login! Verifique se o email e a senha estão corretos.').should('exist');
});

Then('devo ver uma mensagem de erro no campo de email', () => {
  cy.contains('p','Digite seu e-mail para continuar.').should('be.visible');
});

Then('devo ver uma mensagem de erro no campo de senha', () => {
  cy.contains('p','Digite sua senha para continuar.').should('be.visible');
});

Then('devo ver novamente a opção de entrar no site', () => {
  cy.get('[data-cy="btn-trigger-profile"]').contains('Entrar').should('be.visible');
});