Feature: Test Retirement Planner Endpoints with Mocked Responses

Background:
  * url 'http://localhost:8080'

Scenario: Get a users retirement plan (200 OK)
  Given path '/v1/users'
  And param id = '1'
  When method get
  Then status 200
  And match response.id == '1'

# Scenario: Get retirement plan with POST (200 OK)
#   Given path '/graphql'
#   And request { query: "query { retirementPlan(id: \"valid_id\") { id name age retirementAge savings } }" }
#   When method post
#   Then status 200
#   And match response.data.retirementPlan.id == 'valid_id'