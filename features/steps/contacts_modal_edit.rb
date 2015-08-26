Given /^the edit modal window for "(.+)" is open$/ do |name|
  step "I am on the contact index page"
  step "I click the \"Edit\" button for contact \"Bob\""
end

When /^I fill in the "(.+)" field with "(.+)"$/ do |field, value|
  camelCase = field.split.collect(&:capitalize).join
  camelCase = camelCase.split('')
  camelCase[0] = camelCase.first.downcase
  camelCase = camelCase.join
  field_id = "contact-#{camelCase}"
  fill_in("#{field_id}", :with => value)
end

When /^I click the "(.+)" button$/ do |name|
  click_button name
end

When /^I click the modal window's close icon$/ do
  click_button "close"
end

Then /^I should see the edit modal window for "(.+)"$/ do |name|
  expect(page.find(".ui-dialog-title")).to have_text("Edit #{name}")
end
