Given /^I am on (.+)$/ do |page_name|
  visit url_for(page_name)
end

When /^I click "(.+)"$/ do |link|
  click_link link
end
