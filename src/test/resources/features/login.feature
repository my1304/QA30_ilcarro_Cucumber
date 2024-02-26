Feature: Login

  @validData
  Scenario: Login with valid data
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on the Login link
    And User enters valid data
    And User clicks on Yalla button
    Then User verifies Success message is displayed
    And User quites browser

  @wrongPassword
  Scenario Outline: Login with valid email and wrong password
    Given User launches Chrome browser
    When User opens ilcarro HomePage
    And User clicks on the Login link
    And User enters valid email and wrong password
      | email   | password   |
      | <email> | <password> |
    And User clicks on Yalla button
    Then User verifies Error message is displayed
    And User quites browser
    Examples:
      | email       | password    |
      | my1971@ms.sl | Vsssre12345! |
      | my1971@ms.sl | vre12345! |
      | my1971@ms.sl | Vssssss2345! |
      | my1971@ms.sl | Vre1bbssss45! |
      | my1971@ms.sl | sssssss! |