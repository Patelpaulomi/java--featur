Feature: Demo Nopcommerce's topmenu acceptance criteria

  As a user I would like to check acceptance criteria of Nopcommerce topmenu

  Background: User is on given URL
    When user type URL https://demo.nopcommerce.com
    And  User click on Enter button
    Then User is on given URL

  Scenario: Verify that user can navigate to books category
    When user is on given URL
    And  Click on books tab on Top Menu
    Then User is navigated to books Category page

  Scenario: Verify that user can see the Books category page with filters and products
    When user is on given URL
    And  Click on Books tab on Top Menu
    And  Check Filters and List Tab.
    Then Bookd category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'sort by' filter on book category
    Given  User is on books Category
    When   User is on books category
    And    Check 'sort by' filter is present
    Then   'sort by' filter is available on Book Category

  Scenario: Verify that user can see 'Display' filter on Book Category page
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Check 'Display' filter is present
    Then   'Display' filter is available on Books Category

  Scenario: verify that user can see 'Grid' tab on Book Category
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Check 'Grid' tab is present
    Then   'Grid' tab is available on Book Category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given   User is on Books Category page
    When    User is on Book Category page
    And     Check 'List' tab is present
    Then   'List' tab is available on Book Category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given  User is on Books Category page
    When   User is on Books Category page
    And    Click on 'Sort by' Filter
    And    Check that 'Name: A to Z selection is present
    Then   'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: A to Z is first option in 'Sort by' filter
    Given   User is on Books Category page
    When    User is on Books Category page
    And     Click on 'Sort by' Filter
    And     Check that 'Name: A to Z' is first in order
    Then    'Name: A to Z' is first option in order

  Scenario: verify that user can see 'Name: A to Z' filter is functioning as excepted (Note: Products are alphabetical order)
    Given   User is on Books Category page
    When    User is on Books Category page
    And    Click on 'Sort by' Filter
    And    Select 'Name: A to Z' filter
    Then   All product are displayed in alphabetical order


