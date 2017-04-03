Feature: Test Login
  I am going to login page

  Scenario: Goto login page
    Given I visit 'http://203.162.76.14:8080/web/login' page

      When I fill in "login" with "phat.tran@nedcoffee.vn"
      When I fill in "password" with "1"
      And I press "Log in"
      Then I should see "Discuss" within 5 second

