Feature: This feature will help to develop a calculator

  Background: 
    Given I have the calculator

  Scenario: To add two numbers
    When I add 11 and 4
    Then I should get the result as 15

  Scenario: To sub two numbers
    When I sub 12 and 4
    Then I should get the result as 8

  Scenario Outline: To add 2 numbers wuth  multiple data set
    When I add <num1> and <num2>
    Then I should get the result as <result>

    Examples: 
      | num1 | num2 | result |
      |    7 |   10 |     17 |
      |    8 |   21 |     29 |
      |    9 |   32 |     41 |

  Scenario: To add multiple numbers
    When I add below numbers
      |  7 |
      | 10 |
      | 13 |
      | 27 |
      | 59 |
    Then I should get the result as 116

  Scenario: To calculate total bill of all the items
    When I buy below items with given price
      | Coffee   | 15 |
      | Tea      | 15 |
      | Sandwich | 50 |
    Then I should get the result as 80

  Scenario: To calculate total bill of all the items with different quantity
    When I buy below items with given price and quantity
      | Coffee   | 2 | 15 |
      | Tea      | 3 | 15 |
      | Sandwich | 4 | 50 |
    Then I should get the result as 275
