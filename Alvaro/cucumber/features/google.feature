
Feature: as a user I want to send a comment to the Google regarding a
		 new idea about your browser

Scenario: send a comment or complaint to google
Given I'm homepage of the search engine google
When I press the button preferences
    And I press on the link send comment
    And the window appears to enter the comment
    And should introduce my comment and send
Then should show a message of thanks for your comments


Scenario: press the send button without entering a comment
Given I'm homepage of the search engine google
When  I press the button preferences
    And I press on the link send comment
    And the window appears to enter the comment
    But I not introduce the comment and pressed send    
Then a message in red that says enter a message