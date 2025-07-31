import { Given, When, Then, Before } from "@badeball/cypress-cucumber-preprocessor";

Before(() => {
    cy.clearFirebaseSession()
});

Given('que estou na página inicial', () => {
  cy.visit('/');
});

When('faço login com o email {string} e senha {string}', (email, senha) => {
  cy.login(email, senha);
});

Then('devo ver meu perfil logado', () => {
  cy.get('[title="Pedro"]').should('be.visible');
});

Then('devo ver uma mensagem de erro de autenticação', () => {
  cy.contains('Não foi possivel fazer o login! Verifique se o email e a senha estão corretos.').should('exist');
});
