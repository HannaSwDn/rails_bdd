When('I visit the site') do
    visit welcome_index_path
end

Then('I should see {string}') do |content|
    expect(page).to have_content content
end

Given('the following articles exists') do |table|
    table.hashes.each do |article|
        Article.create!(article)
    end
end

Given('I visit the {string} page') do |string|
    visit articles_index_path
end

When('I click {string} link') do |string|

end

When('I fill in {string} with {string}') do |string, string2|

end

When('I click {string} button') do |button|
    click_button button
end

Then('I should be on {string} page') do |string|

end

Then('show me the page') do
    save_and_open_page
end