Feature: Test Retirement Planner Endpoints with Mocked Responses

Background:
  * url 'http://localhost:8080'

Scenario: Get retirement plan (200 OK)
  Given path '/retirement-plan'
  And param id = 'valid_id'
  When method get
  Then status 200
  And match response.id == 'valid_id'

Scenario: Get retirement plan with POST (200 OK)
  Given path '/graphql'
  And request { query: "query { retirementPlan(id: \"valid_id\") { id name age retirementAge savings } }" }
  When method post
  Then status 200
  And match response.data.retirementPlan.id == 'valid_id'