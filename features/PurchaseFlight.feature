Feature: Purchase flight
  Coffee should not be served until paid for
  Coffee should not be served until the button has been pressed
  If there is no coffee left then money should be refunded

  Scenario Outline: Purchase a flight
    Given I access the site "newtours.demoaut.com"
    When I login with id "tutorial" and password "tutorial"
    And I search for a flight for "<number_of_passengers>" passengers departing from "<from_city>" on "<from_date>" and arriving in "<to_city>" on "<to_date>"
    And I select a flight
    And I book a flight
    Then I will see my itinerary has been booked
    Examples:
      | number_of_passengers | from_city | from_date   | to_city  | to_date     |
      | 3                    | New York  | 2016/03/12  | Acapulco | 2016/03/12  |



