Feature: On Calling POST Account Link API with 15 min variation from current timestamp and check if it is
  responding with a bad request.

  Scenario: 1039_1 Send Account Link request with future timestamp(current time + 15 min) in timestamp field.
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 1039_2 Send Account Link request with future timestamp(current time - 15 min) in timestamp field.
  Verify that HTTP 400 is displayed in response.
    Given Calling the "POST /Accounts/link" Flow API
    When  POST action is performed
    Then  Verify that the Response code 400 is displayed
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from
  the current time stamp
    And   Verify that the Error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request