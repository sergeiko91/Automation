
Feature: Landing (Area) screen defaults are correct
    Background:
      Given I click on Got it button
      And I land on "Area" Screen

    Scenario: User is able to see From and To panels
      And I see "Sq Kilometre" in "from" header
      And I see "Sq Metre" in "to" header

    Scenario: Default values in From and To fields are correct
      And I see "1.0" in "from" field
      And I see "1000000" in "to" field

    Scenario: Default units are selected
      And I see "Sq Kilometre" selected in "from" radio buttons
      And I see "Sq Metre" selected in "to" radio buttons