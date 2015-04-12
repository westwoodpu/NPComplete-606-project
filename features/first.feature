Feature: 
Input Pet Data

As a petquest customer I want to enter in my pet data so that I can get standard nutrution for this type of pet. 
	
	
Scenario: Enter in pet data on the website
Given I am on the pet input screen

	When enter "Carly" for petname

	Then Carly should be shown
