Feature: User should be able to use mailservice
  I should be able to log in
  And I should be able to create an email
  And I should be able to reply to an email
  And I should be able to trash an email

  Background:
    Given I am on the site
    And There is a user called "Raoul" with email "raoul@test.com" in our database
    And There is a user called "Faraz" with email "faraz@test.com" in our database
    And I log in as "Raoul"
    And I am on the inbox page


  Scenario: User should be able to send message
    Then I should be able to press "Inbox"
    Then I should be able to press "Compose"
    And I choose "Faraz" as a recipient from the list
    And I fill in the field "Subject" with "subject"
    And I fill in the field "Type your message here" with "message"
    And I should be able to press "Send Message"
    And I should see the text "Your message was successfully sent!"

  Scenario: User can reply to message
    Given I should be able to press "Sent"
    And I should be able to press "View"
    And I fill in the field "Reply Message" with "reply message"
    And I should be able to press "Reply"

