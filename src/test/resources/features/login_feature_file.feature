@customer_login
Feature: customer_login_feature
#Login the application with customer credentials. https://www.medunna.com/
  Scenario Outline: login_with_customer_credentials

    Given user opens the URL "https://www.medunna.com/"
    When user navigate the login page
    And user enters username as "<username>" and password as "<password>" and click on login button
    Then verify the login is successful
    Then close the application

    Examples: test_data
      |username              |password  |
      |customer@medunna.com  |12345     |
      |customer1@medunna.com |12346     |

#     credentials need to be corrected