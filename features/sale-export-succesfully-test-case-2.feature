Feature: Sales Export Successfully Test Case 2
  The Sales

  Scenario: The Sales Manager creates a new S Contract - Export successfully
    Given I visit 'http://203.162.76.14:8080/web/login' page

      When I fill in "login" with "phat.tran@nedcoffee.vn"
      When I fill in "password" with "1"
      And I press "Log in"
      Then I should see "Discuss" within 5 second

      # When I click by class "app-drawer-toggle"
      # And I click "Contracts"
      # Then I should see "S Contract - Export" within 5 second
      # And I press "Create"
      # Then I should see "Save" within 15 second
      # # And I fill input with class with "1234"
      # When I fill in id "oe-field-input-6" with "Agribank"
      # And I press key "TAB"

      # Then I should see "Create a Customer" within 5 second
      # And I press "Cancel"
      # When I select in id "status" with "Factory"
      # And I press key "TAB"
      # When I checked in id "oe-field-input-10"
      # When I select in id "weights" with "NSW"
      # When I fill in "shipment_date" with "31/03/2017"
      # And I Click "Add an item"
      # Then I should see "Save" within 3 second
      # # When I fill in data "product_id" with "G13-ST9"
      # And I press "Save"
      # # When I fill text in data "name" with "Nestle 7.2"
      # When I fill in data "certificate_id" with "4C Verification"
      # # And I press key "RETURN"
      # Then I should see "Save" within 1 second
      # Then I should see "Save" within 15 second

#   # Scenario: The Sales Manager creates a SI for the S Contract - Export successfully - Test Case 1
#   #   Given I visit 'http://203.162.76.14:8080/web/login' page

#   #     When I fill in "login" with "phat.tran@nedcoffee.vn"
#   #     When I fill in "password" with "1"
#   #     And I press "Log in"
#   #     Then I should see "Discuss" within 5 second

#   #     When I click by class "app-drawer-toggle"
#   #     And I click "Contracts"
#   #     Then I should see "S Contract - Export" within 5 second


#   # Scenario: The Sales Manager creates a SI for the S Contract - Export successfully - Test Case 2
#   #   Given I visit 'http://203.162.76.14:8080/web/login' page

#   #     When I fill in "login" with "phat.tran@nedcoffee.vn"
#   #     When I fill in "password" with "1"
#   #     And I press "Log in"
#   #     Then I should see "Discuss" within 5 second

#   #     When I click by class "app-drawer-toggle"
#   #     And I click "Contracts"
#   #     Then I should see "S Contract - Export" within 5 second


#   # Scenario: The Sales Manager creates a SI for the S Contract - Export successfully - Test Case 3
#   #   Given I visit 'http://203.162.76.14:8080/web/login' page

#   #     When I fill in "login" with "phat.tran@nedcoffee.vn"
#   #     When I fill in "password" with "1"
#   #     And I press "Log in"
#   #     Then I should see "Discuss" within 5 second

#   #     When I click by class "app-drawer-toggle"
#   #     And I click "Contracts"
#   #     Then I should see "S Contract - Export" within 5 second


#   # Scenario: The Sales Manager creates the second NVS for the SI with the rest quantity successfully
#   #   Given I visit 'http://203.162.76.14:8080/web/login' page

#   #     When I fill in "login" with "phat.tran@nedcoffee.vn"
#   #     When I fill in "password" with "1"
#   #     And I press "Log in"
#   #     Then I should see "Discuss" within 5 second

#   #     When I click by class "app-drawer-toggle"
#   #     And I click "Contracts"
#   #     Then I should see "S Contract - Export" within 5 second