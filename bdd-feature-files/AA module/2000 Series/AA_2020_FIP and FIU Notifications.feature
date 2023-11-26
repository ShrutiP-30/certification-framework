Feature: On calling FIP and FIU Notifications API, verify that on FIP responding with
  invalid ver for FI request from AA, FI notification with error status is sent back to FIU.

  Scenario: 2020_1 On calling FIP and FIU Notifications API, use the pre-generated consent
  details from settings and set the invalid values for FI response in mock FIP. Set the FI
  notification response in FIU mock server and send a valid FI request to AA. Wait to receive
  FI notification in mock FIU. Use the incorrect version number from settings.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is matching and FAILED

  Scenario: 2020_2 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU. Add an extra digit at the end of correct version number.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is matching and FAILED

  Scenario: 2020_3 On calling FIP and FIU Notifications API, use the pre-generated consent details from settings and set the
  invalid values for FI response in mock FIP. Set the FI notification response in FIU mock server and send a valid FI
  request to AA. Wait to receive FI notification in mock FIU. Remove the last character digit at the end of correct
  version number.
    Given Calling the "FIP and FIU Notifications" Flow API
    When  FIP and FIU Notifications API, action is performed
    Then  Verify that the POST FI notification received in the mock FIU app, the FIStatusNotification.sessionId is
  matching the session id received in the FI response from AA
    And   Verify that the POST FI notification recieved in the mock FIU app, the FIStatusNotification.sessionStatus
  is matching and FAILED