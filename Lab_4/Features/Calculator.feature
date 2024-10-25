Feature: Calculator
  This feature verifies the basic operations of a calculator

  Scenario Outline: Addition operation
    Given I have entered <firstNumber> into the calculator
    And I have entered <secondNumber> into the calculator
    When I press add
    Then the result should be <result> on the screen

    Examples:
      | firstNumber | secondNumber | result |
      | 2           | 3            | 5      |
      | -1          | -1           | -2     |
      | 0           | 5            | 5      |
      | 10          | 5            | 15     |

  Scenario Outline: Subtraction operation
    Given I have entered <firstNumber> into the calculator
    And I have entered <secondNumber> into the calculator
    When I press subtract
    Then the result should be <result> on the screen

    Examples:
      | firstNumber | secondNumber | result |
      | 5           | 3            | 2      |
      | 10          | -5           | 15     |
      | 1           | 5            | -4     |
      | -5          | -3           | -2     |

  Scenario Outline: Multiplication operation
    Given I have entered <firstNumber> into the calculator
    And I have entered <secondNumber> into the calculator
    When I press multiply
    Then the result should be <result> on the screen

    Examples:
      | firstNumber | secondNumber | result |
      | 2           | 3            | 6      |
      | -2          | 3            | -6     |
      | 0           | 5            | 0      |
      | 10          | -1           | -10    |

  Scenario Outline: Division operation
    Given I have entered <firstNumber> into the calculator
    And I have entered <secondNumber> into the calculator
    When I press divide
    Then the result should be <result> on the screen

    Examples:
      | firstNumber | secondNumber | result |
      | 6           | 3            | 2      |
      | 10          | 5            | 2      |
      | -6          | 3            | -2     |
      | 5           | 0            | 0      |
