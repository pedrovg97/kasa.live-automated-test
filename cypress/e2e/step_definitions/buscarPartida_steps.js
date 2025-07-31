import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// --- Given ---
Given('que estou na página de partidas', () => {
    cy.get('[data-cy="link/"]')
      .click(); 
});


// --- When ---
When('eu insiro o time {string} no filtro "Qual time?"', (teamName) => {
    cy.get('[id="filter-team"]')
      .click();
    cy.get('[id="filter-team"]')
      .type(teamName);
});

When('eu insiro o campeonato {string} no filtro "Qual campeonato?"', (championshipName) => {
    cy.get('[id="filter-championship"]')
      .click();
    cy.get('[id="filter-championship"]')
      .type(championshipName);
});

When('eu seleciono o canal {string} no filtro "Onde quer ver?"', (chanelName) => {
    cy.get('[id="filter-streaming"]')
      .click();
    cy.get('[id="filter-streaming"]')
      .type(chanelName);
});

When('clico em pesquisar', () => {
    cy.get('.css-7phnxr')
      .click();
});


// --- Then ---
Then('devo ver os resultados para o time {string}', (teamName) => {
  cy.get('.css-7mca6u')
    .contains(teamName)
    .should('be.visible');
});

Then('devo ver os resultados para o campeonato {string}', (championshipName) => {
  cy.get('[title="Copa Libertadores"]')
    .contains(championshipName)
    .should('be.visible');
});

Then('devo ver os resultados para o canal {string}', (channelName) => {
  cy.intercept('GET', `**?channel_name=${channelName}*`)
    .as('getChannel');
  cy.wait('@getChannel')
    .its('response.statusCode')
    .should('eq', 200);
});