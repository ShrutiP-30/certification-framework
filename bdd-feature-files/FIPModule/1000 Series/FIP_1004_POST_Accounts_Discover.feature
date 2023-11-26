Feature: On Calling POST Account discovery API with valid customer id, FIType as SIP and strong customer identifier
  and check if the received discovered account details are matching.

  Scenario: 1004_1 On Calling POST Account discovery with strong identifier MOBILE for a user with single account
  in SIP FIType and expect the received account details to have exactly one account of SIP type, account numbers
  to be masked properly and account details to exactly match the user SIP accounts.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And   Verify that FIType of all objects in list should match the FIType sent in the request body
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list
    And   Verify that the HTTP status code 200 is received

  Scenario: 1004_2 On Calling POST Account discovery with strong identifier MOBILE for a user with two account
  in SIP FIType and expect the received account details to have exactly two account of SIP type, account numbers
  to be masked properly and account details to exactly match the user SIP accounts.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And   Verify that FIType of all objects in list should match the FIType sent in the request body
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list
    And   Verify that the HTTP status code 200 is received

  Scenario: 1004_3 On Calling POST Account discovery with strong identifier MOBILE for a user with three account
  in SIP FIType and expect the received account details to have exactly three account of SIP type, account numbers
  to be masked properly and account details to exactly match the user SIP accounts.
    Given Calling the "POST /Accounts/discover" Flow API
    When  POST action is performed
    Then  Verify that number of items in the list, accType and accRefNumber for each should match as per the test
  user data from settings
    And   Verify that FIType of all objects in list should match the FIType sent in the request body
    And   Verify All maskedAccNumber in the list should be masked properly
    And   accRefNumber should not repeat in list
    And   Verify that the HTTP status code 200 is received