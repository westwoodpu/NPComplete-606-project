Feature: As a petquest customer, 
	I want to add my pets 
         so that I can calculate their recommended nutrition


Scenario: Enter pet data
	  Given I am on the initial screen
	  And I fill in petname with "Tiger"
          And I fill in age with "10"
	  When I press "Save"
	  Then the page should have the added petname with "Tiger" And 		  "10"
	
