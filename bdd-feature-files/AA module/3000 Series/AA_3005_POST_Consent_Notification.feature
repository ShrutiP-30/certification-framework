Feature: On calling POST Consent Notification API, verify that on sending consent notification
  request with invalid format txnid, the error response is received.

  Scenario: 3005_1 On calling POST Consent Notification API, set the POST consent response in
  FIP mock server. Send a valid consent request and ask the user to approve the consent and
  confirm. Send a valid consent handle to receive APPROVED status. Send a consent fetch request
  and finally send a consent notification request and generate a new UUID, and add an extra
  character at the end and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request

  Scenario: 3005_2 On calling POST Consent Notification API, set the POST consent response in FIP mock server. Send a
  valid consent request and ask the user to approve the consent and confirm. Send a valid consent handle to receive
  APPROVED status. Send a consent fetch request and finally send a consent notification request and generate a new UUID,
  and remove the last character and Verify that the error response is received.
    Given Calling the "POST /Consent/Notification" Flow API
    When  POST action is performed
    Then  Verify that the response code displayed is HTTP 400
    And   Verify that the timestamp has the exact format i.e the timestamp is in "+15" or "-15" minutes from current
  time stamp
    And   Verify that the error code is InvalidRequest
    And   Verify that the version is supported version
    And   Verify that the txnid id is same as the txnid from request