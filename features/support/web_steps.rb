Given /^I am on (.+)$/ do |page_name|
  visit url_for(page_name)
end

When /^I click "(.+)"$/ do |link|
  click_link link
end

Then /^I should be on (.+)$/ do |page_name|
  expect(page.current_url).to eql(url_for(page_name))
end
