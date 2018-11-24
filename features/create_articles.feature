Feature: Create articles
    As a publisher
    In order to add relevant content to my news service
    I would like to be able to create articles

    Background:
        Given I visit the site
        When I click 'Create an article' link

    Scenario: Successfully create an article
        When I fill in 'Title' with 'Learning Rails 5'
        And I fill in 'Content' with 'Excited about learning a new framework'
        Then show me the page
        And I click 'Create Article'
        Then I visit the site
        Then show me the page
        And I should see 'Learning Rails 5'
        And I should see 'Excited about learning a new framework'