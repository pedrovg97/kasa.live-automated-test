Cypress.Commands.add('login', (email, password) => {
  cy.get('[data-cy="btn-trigger-profile"]').should('be.visible').click();
  cy.get('[data-cy="login-email"]').type(email);
  cy.get('[data-cy="login-password"]').type(password);
  cy.intercept('GET', '**/profile').as('loginOK');
  cy.intercept('GET', '**/favorite-matches').as('favoriteMatches');
  cy.get('[data-cy="login-submit"]').click();
  cy.wait('@loginOK');
  cy.wait('@favoriteMatches');

});

Cypress.Commands.add('logout', ( ) => {
  cy.get('[data-cy="btn-trigger-profile"]').click();
  cy.get('[data-cy="btn-logout-profile"]').click();
  

});

Cypress.Commands.add('clearFirebaseSession', () => {
  return new Cypress.Promise((resolve) => {
    const dbName = 'firebaseLocalStorageDb'; 
    
    const deleteRequest = window.indexedDB.deleteDatabase(dbName);

    deleteRequest.onsuccess = () => {
      resolve(); 
    };

    deleteRequest.onerror = (event) => {
      resolve(); 
    };
  });
});

Cypress.Commands.add('addFavoriteTeam', (team) => {
  cy.get('body').then(($body) => {
    if ($body.find(`[title="${team}"]`).length === 0) {
      cy.get('[data-cy="link/favoritos"]').click();
      cy.get('[data-cy="btn-favorite-team"]').click();
      cy.intercept('GET', 'https://kasalive.api.prod.loomi.com.br/api/1.0/team/?page=1&name=*').as('searchTeam');
      cy.get('[data-cy="input-search-teams"]').type(team);
      cy.wait('@searchTeam');
      cy.contains('Add').click();
      cy.get('[data-cy="btn-submit-teams"]').click();

    } 
  });
});

Cypress.Commands.add('removeFavoriteTeam', (team) => { 
  cy.get('[data-cy="link/favoritos"]').click();
  cy.get('[data-cy="btn-edit-teams"]').click();
  cy.get(`[title="${team}"]`).then(() => {
    cy.get('.chakra-button.css-di3rc').click();  
  });  
  cy.get('[data-cy="btn-save-teams"]').click();
});