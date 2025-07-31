import { Given, When, Then, Before } from "@badeball/cypress-cucumber-preprocessor";

Before(() => {
    cy.clearFirebaseSession()
    cy.visit('/');
    cy.login('pedrotestesrma@gmail.com', 'userteste')
});

//Adicionar um novo time aos favoritos
Given('que eu estou na aba favoritos', () => {
  cy.get('[data-cy="link/favoritos"]').click();
});
When('clico em "Favoritar time"', () => {
  cy.get('[data-cy="btn-favorite-team"]').click();
});
When('pesquiso por um time', () => {
  cy.get('[data-cy="input-search-teams"]').type('Olaria');  
}); 
When('clico em "Add"', () => {
  cy.contains('Add').click();
});
When('clico em "Concluir"', () => {
  cy.get('[data-cy="btn-submit-teams"]').click(); 
}); 
Then('o novo time deve aparecer na minha lista de "Times favoritos".', () => {
  cy.get('[title="Olaria"]').should('be.visible');
});

//Remover um time da lista de favoritos
Given('que um time já está na minha lista de favoritos', () => {
  cy.addFavoriteTeam('Maringá FC');
});
When('clico em "Editar"', () => {
  cy.get('[data-cy="btn-edit-teams"]').click();
});
When('clico no "X" abaixo do time', () => {
  cy.get('[title="Maringá FC"]').then(() => {
    cy.get('.chakra-button.css-di3rc').click();  
  });  
}); 
When('depois clico em "Salvar"', () => {
  cy.get('[data-cy="btn-save-teams"]').click();
});
Then('o time não deve mais aparecer na minha lista de "Times favoritos"', () => {
  cy.get('[title="Maringá FC"]').should('not.exist');
});

//Visualizar partidas dos times favoritos
Given('que adiciono um time como favorito', () => {
  cy.addFavoriteTeam('Maringá FC');
});

When('desativo o toggle "Partidas favoritas"', () => {
  cy.get('[data-cy="switch-favorites"]').click();
});

When('estou na listagem de partidas favoritas', () => {
  cy.intercept('GET', '**/_next/data/*/favoritos.json').as('getFavoritosData');
  cy.get('[data-cy="link/favoritos"]').click();
  cy.wait('@getFavoritosData');

}); 

Then('devo ver os jogos dos meu time favorito', () => {
  cy.get('.css-7mca6u').contains('Maringá').should('be.visible');
});

//Partidas do time são ocultadas das favoritas após remove-lo dos times favoritos  
Given('que tenho um time como favorito', () => {
  cy.addFavoriteTeam('Maringá FC');
});

When('removo o time dos favoritos', () => {
  cy.removeFavoriteTeam('Maringá FC');
});

When('vejo a listagem de partidas favoritas', () => {
  cy.intercept('GET', '**/_next/data/*/favoritos.json').as('getFavoritosData');
  cy.get('[data-cy="link/favoritos"]').click();
  cy.wait('@getFavoritosData');

}); 

Then('as partidas desse time não devem aparecer na lista de partidas favoritas', () => {
  cy.get('.css-7mca6u').contains('Maringá').should('not.exist');
});

//Favoritar uma partida no modo grade 
Given('que estou no listagem de partidas no modo grade', () => {
  cy.get('[data-cy="link/"]').click();
  cy.get('[alt="grid"]').click();
});

When('clico no botão de favoritar partida do modo grade', () => {
  cy.contains('.css-5prxxc', 'CA Huracán').find('[aria-label="Favoritar Partida"]').should('be.visible').click();

cy.intercept('POST', '**/favorite-matches/').as('updateFavoriteMatch');
cy.intercept('PATCH', '**/favorite-matches/').as('updateFavoriteMatch');});

Then('a partida deve ser favoritada', () => {
  cy.wait('@updateFavoriteMatch').then((interception) => {
    expect(interception.response.statusCode).to.be.oneOf([200, 201]);
  });
});

//Favoritar uma partida no modo lista 
Given('que estou no listagem de partidas no modo lista', () => {
  cy.get('[data-cy="link/"]').click();
  cy.get('[alt="lista"]').click();
});

When('clico no botão de favoritar partida do modo lista', () => {
  cy.contains('.css-1ew6dnr', 'CA Huracán').find('[aria-label="Favoritar Partida"]').should('be.visible').click();
 
cy.intercept('POST', '**/favorite-matches/').as('updateFavoriteMatch');
cy.intercept('PATCH', '**/favorite-matches/').as('updateFavoriteMatch');
});
