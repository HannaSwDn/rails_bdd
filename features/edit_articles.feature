Feature: Edit articles
    As a publisher
    In order to change content in the articles
    I would like to be able to edit articles

    Scenario: Successfully editing an article
        Given the following articles exists
            | title                | content                     |
            | A breaking news item | Some really breaking action |
        And I visit the site
        And I click 'Edit' link
        And I fill in 'article_content' with 'Some really really breaking action'
        And I click 'Update Article'
        Then I should see 'Some really really breaking action'
