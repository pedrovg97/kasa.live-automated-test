import { Given, When, Then } from "@badeball/cypress-cucumber-preprocessor";


// --- When ---

When('acesso as informações do meu perfil', () => {
    cy.get('[data-cy="btn-trigger-profile"]').should('be.visible').click();
});


// --- Then ---


Then('vejo a opção de "Conectar com seu Google Calendar"', () => {
  cy.get('[id="switch-google-calendar"]').should('exist');
  cy.contains('Conectar com seu Google Calendar').should('exist'); 
});

