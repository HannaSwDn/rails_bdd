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
    click_link string
end

When('I fill in {string} with {string}') do |input, content|
    fill_in input, with: content
end

When('I click {string}') do |x|
    click_on x
end

Then('show me the page') do
    save_and_open_page
end