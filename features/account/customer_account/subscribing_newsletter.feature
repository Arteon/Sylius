@customer_account
Feature: Subscribing to the newsletter
    In order to be up-to-date with products and promotions
    As a Customer
    I want to be able to subscribe to the newsletter

    Background:
        Given the store operates on a single channel in "United States"
        And there is a customer "Francis Underwood" identified by an email "francis@underwood.com" and a password "whitehouse"
        And I am logged in as "francis@underwood.com"

    @ui
    Scenario: Subscribing to the newsletter
        Given I want to modify my profile
        When I subscribe to the newsletter
        And I save my changes
        Then I should be notified that it has been successfully edited
        And subscription to the newsletter should be enabled