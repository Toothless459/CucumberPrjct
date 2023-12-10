Feature: This feature will help to login to Simplilearn website

  Background: 
    Given I have launched the application URL
    When I click on the login link

  @WIP
  Scenario: Validate Login Success scenario
    And I enter the username
    And I enter the password
    And I click on the login button
    Then I should land on the home page

  @Sanity
  Scenario: Validate Login failiure scenario using data parameters
    When I enter the username as "Abc@xyz.com"
    And I enter the password as "Abc@1234"
    And I click on the login button
    Then I should get the error message as "The email or password you have entered is invalid."

  @Regression
  Scenario Outline: Validate Login failiure scenario using Examples
    When I enter the username as "<UserName>"
    And I enter the password as "<Password>"
    And I click on the login button
    Then I should get the error message as "<ErrorMsg>"

    Examples: 
      | UserName    | Password | ErrorMsg                                           |
      | Abc@xyz.com | Abc@1234 | The email or password you have entered is invalid. |
      | Def@xyz.com | Def@1234 | The email or password you have entered is invalid. |

  @Sanity @Regression
  Scenario: Validate the other login options on the screen
    Then I should see below login options on the screen
      | Google   |
      | Facebook |
      | Linkedin |
      | Apple    |
