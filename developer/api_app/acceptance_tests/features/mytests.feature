Feature: This feature contains acceptance tests for testing the api app

Scenario: Get all quotes
  Given I GET root
  Then I expect "200" and retrieve all quotes

Scenario: Get a random quote
  Given I GET "/quote/random"
  Then I expect "200" and print the quote

Scenario: Get quote by index
  Given I GET "/quote/0"
  Then I expect "200" and print the quote

Scenario: POST quote
  Given I POST a quote
  Then I expect "200" and GET the quote posted

Scenario: DEL quote
  Given I DEL quote "1"
  Then I expect "200" and verify that the quote is deleted
