import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// --- Hooks e Passos de Contexto ---

Given('que estou logado no sistema', () => {
  cy.visit('/');
  cy.login('pedrotestesrma@gmail.com', 'userteste');
});


Given('que o time {string} está na minha lista de favoritos', (teamName) => {
  cy.addFavoriteTeam(teamName); 
});


// --- Passos de Ação (When) ---

When('eu adiciono o time {string} aos favoritos', (teamName) => {
  cy.intercept('GET', '**/team-favorite').as('getFavorites');
  cy.get('[data-cy="link/favoritos"]').click();
  cy.wait('@getFavorites');
  cy.get('[data-cy="btn-favorite-team"]').click();
  cy.get('[data-cy="input-search-teams"]').type(teamName);
  cy.contains('Add').click();
  cy.get('[data-cy="btn-submit-teams"]').click();
});

When('eu removo o time {string} dos favoritos', (teamName) => {
  cy.get('[data-cy="link/favoritos"]').click();
  cy.get('[data-cy="btn-edit-teams"]').click();
  cy.get(`[title="${teamName}"]`).parent().find('.chakra-button.css-di3rc').click();
  cy.get('[data-cy="btn-save-teams"]').click();
});

When('eu navego para a aba de favoritos', () => {
  cy.intercept('GET', '**/_next/data/*/favoritos.json*').as('getFavoritosData');
  cy.get('[data-cy="link/favoritos"]').click();
  cy.wait('@getFavoritosData');
});


When('eu desativo o toggle "Partidas favoritas"', () => {
  cy.get('[data-cy="switch-favorites"]').click();
});

When('eu faço logout"', () => {
  cy.logout().click();
});

When('faço login novamente', () => {
  cy.login('pedrotestesrma@gmail.com', 'userteste');
});

// --- Passos de Verificação (Then) ---

Then('o time {string} deve aparecer na minha lista de "Times favoritos"', (teamName) => {
  cy.get(`[title="${teamName}"]`).should('be.visible');
});

Then('o time {string} não deve mais aparecer na minha lista de "Times favoritos"', (teamName) => {
  cy.get(`[title="${teamName}"]`).should('not.exist');
});

Then('devo ver os jogos do time {string}', (teamName) => {
  cy.get('.css-7mca6u').contains(teamName).should('be.visible');
});

Then('a lista de partidas favoritas deve ser ocultada', () => {
  cy.get('.css-7mca6u').should('not.exist'); // Exemplo
});