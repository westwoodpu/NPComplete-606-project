Feature: As a petquest customer, 
	I want to add food to my recipe
         so that I can get a recommendation for pet meals


Scenario: Add Recipe
	  Given I am on the see food screen
	  When I press "Add food" to "pork"
	  Then the page should have "Pork_lean&fat" 
	
