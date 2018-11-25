Feature: Delete articles
    As a publisher
    In order to manage my articles
    I would like to be able to delete articles

    Scenario: Successfully deleting an article
        Given the following articles exists
            | title                | content                     |
            | A breaking news item | Some really breaking action |
        And I visit the site
        And I click 'Delete'
        And I click 'OK'