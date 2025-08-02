import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";

// --- Given ---
Given('que estou na aba "Melhores Momentos"', () => {
    cy.get('[data-cy="link/melhores-momentos"]')
      .click(); 
});   


// --- When ---
When('eu clico na miniatura de um vídeo', () => {
    cy.intercept('GET', 'https://www.youtube.com/**').as('loadMedia');
    cy.get(':nth-child(1) > .card-highlight-overlay')
      .click();
});

When('fecho a reproduçao do video', () => {
    cy.get('.chakra-modal__close-btn.css-r3ilio')
      .should('be.visible') 
      .click();
});


// --- Then ---
Then('um player de vídeo deve abrir e iniciar a reprodução', () => {
    cy.wait('@loadMedia', { timeout: 10000 })
      .its('response.statusCode')
      .should('eq', 200);
    
});

Then('devo voltar para a lista de melhores momentos', () => {
    cy.contains('Melhores momentos das Partidas Finalizadas')
      .should('be.visible');
});


