@search @qa

Feature: Automation Practice.

Background: 

    When I open the testing page
    Then I should see a search texbox displayed
  
  Scenario: Search positive

    When I search for "Blouse"
    And I click en search button
    Then I should see the following number of results "1 result has been found"

    When I select type of view list
    Then I should see that the list view is selected

    Then I should see the first item "Blouse"


Scenario: Search negative

    When I search for "Car"
    And I click en search button

    Then I should see the following number of results "0 result have been found"
    And I should see a message saying that "No result were found for your search " "Car"
    
