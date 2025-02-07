Feature: On Calling POST FI Request with timestamp fields in different formats and check if it
  is responding with HTTP status code 400 (Bad request)

  Scenario: 3003_1 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  incorrect timestamp format MMM DD YYYY HH:mm:ss in timestamp field of request body. Verify that HTTP 400
  is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.

  Scenario: 3003_2 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  incorrect timestamp format MMM DD, YYYY HH:mm:ss in timestamp field of request body. Verify that HTTP 400
  is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.

  Scenario: 3003_3 Use the pre-linked user details from settings,set Consent/notification response in mock
  server, send one valid consent post request and then try the following. Send POST Account FIRequest with
  incorrect timestamp format YY-MM-DD HH:mm:ss in timestamp field of request body. Verify that HTTP 400
  is displayed in response.
    Given  Calling the POST FI Request Flow API
    When  POST action is performed.
    Then  Verify that the Response code 400 is displayed.
    And Verify that the timestamp has the exact format, and the timestamp is in "+15" or "-15" minutes from
  the current time stamp.
    And  Verify that the Error code is InvalidRequest.
    And Verify that the version is supported version.