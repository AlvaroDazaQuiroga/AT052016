Feature: as a user of Gmail I want to create
		 my new email account  

Scenario: all my facts right
Give since I register for the first time
When  I enter my name "name"
And my lastname "lastname"
And my username "ads@google.com"
And my password "****"
And the confirmation of my password "****"
And my month and year 123 123 123 day of birth
And I choose my genre combobox "M"
And I enter my cell number 123
And my email reference "blabla@blabla.com"
Then the registration is successful

Scenario: register my username is already used
When  entering my username "ads@google.com"
But the username is already in use
Then appear a message its say a username is already in use
