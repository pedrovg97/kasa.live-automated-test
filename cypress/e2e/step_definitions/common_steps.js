import { Given } from "@badeball/cypress-cucumber-preprocessor";

Given('que estou logado no sistema', () => {
   cy.visit('/');
   cy.login('pedrotestesrma@gmail.com', 'userteste');
});

